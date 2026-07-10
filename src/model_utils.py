from tqdm import tqdm
import numpy as np
import torch
from torch import nn
from torch.utils.data import Dataset, DataLoader
from sklearn.metrics import accuracy_score
from dataset_utils import radio_dataset
import time
import json
from brevitas.export import export_qonnx, export_onnx_qcdq
#Training normally on dataset
def _train(model:nn.Module, train_loader:DataLoader, optimizer, criterion):
    # Save losses here and make sure model is in training mode.
    losses = []
    model.train()    

    # Iterate over the data and train
    for (inputs, target, _) in tqdm(train_loader, desc="Training Batches"):#, leave=False):   
        #if gpu is not None:
        inputs = inputs.to('cuda').float()
        target = target.to('cuda')
                
        # forward pass
        output = model(inputs)
        loss = criterion(output, target)
        
        # backward pass + run optimizer to update weights
        optimizer.zero_grad() 
        loss.backward()
        optimizer.step()
        
        # keep track of loss value
        losses.append(loss.cpu().detach().numpy())
    return losses

def _test(model:nn.Module, test_loader:DataLoader):    
    # ensure model is in eval mode
    model.eval() 
    y_true = []
    y_pred = []
   
    with torch.no_grad():
        for (inputs, target, _) in tqdm(test_loader, desc="Testing Batches", leave=False):
            #if gpu is not None:
            inputs = inputs.to('cuda').float()
            target = target.to('cuda')
            output = model(inputs)
            pred = output.argmax(dim=1, keepdim=True)
            y_true.extend(target.tolist()) 
            y_pred.extend(pred.reshape(-1).tolist())
        
    return accuracy_score(y_true, y_pred)

#return running loss and running acc
def train_model_on_dataset(model:nn.Module,dataset:radio_dataset,
                           build_dir:str,
                           batch_size:int=1024,
                           num_epochs:int=100,
                           early_stop:int=10,
                           min_epochs:int=50):
    np.random.seed(2021)
    torch.manual_seed(2021)
    #checkpoint_path
    chpt_path=f"{build_dir}/model.pth"

    gpu='cuda'
    model = model.to(gpu)

    # loss criterion and optimizer
    criterion = nn.CrossEntropyLoss()
    criterion = criterion.to(gpu)
    optimizer = torch.optim.Adam(model.parameters(), lr=0.01)
    lr_scheduler = torch.optim.lr_scheduler.CosineAnnealingWarmRestarts(optimizer, T_0=5, T_mult=1)

    dtrain = DataLoader(dataset, batch_size=batch_size, sampler=dataset.train_sampler)
    dval = DataLoader(dataset, batch_size=batch_size, sampler=dataset.val_sampler)

    running_loss = []
    running_test_acc = []
    start_time=time.time()
    best_val_acc = float('-inf')
    count = 0

    train_log={}
    for epoch in tqdm(range(num_epochs), desc="Epochs"):
        loss_epoch = _train(model, dtrain, optimizer, criterion)
        val_acc = _test(model, dval)
        
        # print("Epoch %d: Training loss = %f, validation accuracy = %f" % (epoch, np.mean(loss_epoch), val_acc))

        if val_acc > best_val_acc:
            torch.save(model.state_dict(), chpt_path)
            print(f'\nEpoch {epoch}: Model checkpoint is saved in {chpt_path}')
            best_val_acc = val_acc
            count = 0
        else:
            count+=1

        running_loss.append(loss_epoch)
        running_test_acc.append(val_acc)
        lr_scheduler.step()
       
        #output log
        with open(f"{build_dir}/train_log.json",'w') as f:
            train_log[str(epoch)]={
                                "val_acc":val_acc,
                                "mean_loss":float(np.mean(loss_epoch)),
                                "seconds_from_start":time.time()-start_time
                                }
            json.dump(train_log, f, ensure_ascii=False, indent=4)
    
        if (count > early_stop and epoch>=min_epochs):
            print("Stopping early")
            break

    # training_time=time.time()-start_time
    # print(f'total training time: {training_time}')

    torch.save(model.state_dict(), chpt_path) #final save

    return running_loss, running_test_acc


#training using knowledge distillation
#https://docs.pytorch.org/tutorialsbest best o/beginner/knowledge_distillation_tutorial.html
def _train_kd(student:nn.Module, teacher:nn.Module, train_loader:DataLoader, optimizer, T, soft_target_loss_weight, ce_loss_weight, ce_loss):
    running_loss = 0.0
    
    student.to("cuda")
    teacher.to("cuda")
    teacher.eval()  # Teacher set to evaluation mode
    student.train() # Student to train mode 

    # Iterate over the data and train
    for (inputs, target, _) in tqdm(train_loader, desc="Training Batches"):#, leave=False):   
        #if gpu is not None:
        inputs = inputs.to('cuda').float()
        target = target.to('cuda')
                
        optimizer.zero_grad() 

        # Forward pass with the teacher model - do not save gradients here as we do not change the teacher's weights
        with torch.no_grad():
            teacher_logits = teacher(inputs)

        # Forward pass with the student model
        student_logits = student(inputs)

        #Soften the student logits by applying softmax first and log() second
        soft_targets = nn.functional.softmax(teacher_logits / T, dim=-1)
        soft_prob = nn.functional.log_softmax(student_logits / T, dim=-1)

        # Calculate the soft targets loss. Scaled by T**2 as suggested by the authors of the paper "Distilling the knowledge in a neural network"
        soft_targets_loss = torch.sum(soft_targets * (soft_targets.log() - soft_prob)) / soft_prob.size()[0] * (T**2)

        # Calculate the true label loss
        label_loss = ce_loss(student_logits, target)

        # Weighted sum of the two losses
        loss = soft_target_loss_weight * soft_targets_loss + ce_loss_weight * label_loss

        loss.backward()
        optimizer.step()

        running_loss += loss.item()
    return running_loss


def train_model_kd(student:nn.Module,teacher:nn.Module,dataset:radio_dataset,
                    build_dir:str,
                    batch_size:int=1024,
                    num_epochs:int=100,
                    early_stop:int=10,
                    min_epochs:int=50):
    chpt_path=f"{build_dir}/model.pth"

    ce_loss = nn.CrossEntropyLoss()
    optimizer = torch.optim.Adam(student.parameters(), lr=0.01)
    lr_scheduler = torch.optim.lr_scheduler.CosineAnnealingWarmRestarts(
        optimizer, T_0=5, T_mult=1
    )

    T=4
    soft_target_loss_weight=0.75
    ce_loss_weight=0.25
    
    teacher.eval()  # Teacher set to evaluation mode
    student.train() # Student to train mode

    dtrain = DataLoader(dataset, batch_size=batch_size, sampler=dataset.train_sampler)
    dval = DataLoader(dataset, batch_size=batch_size, sampler=dataset.val_sampler)
    start_time=time.time()
    train_log={}

    running_loss = []
    running_test_acc = []
    best_val_acc = float('-inf')
    count=0
    for epoch in tqdm(range(num_epochs), desc="Epochs"):
        loss_epoch=_train_kd(student,teacher,dtrain,
                              optimizer,T,soft_target_loss_weight,
                              ce_loss_weight,ce_loss)
        val_acc = _test(student, dval)

        running_loss.append(loss_epoch)
        running_test_acc.append(val_acc)
        # print("Epoch %d: Training loss = %f, validation accuracy = %f" % (epoch, np.mean(loss_epoch), val_acc))

        if val_acc > best_val_acc:
            torch.save(student.state_dict(), chpt_path)
            print(f'\nEpoch {epoch}: Model checkpoint is saved in {chpt_path}')
            best_val_acc = val_acc
            count = 0
        else:
            count+=1
        
        lr_scheduler.step()

        #output log
        with open(f"{build_dir}/train_log.json",'w') as f:
            train_log[str(epoch)]={
                                "val_acc":val_acc,
                                "mean_loss":float(np.mean(loss_epoch)),
                                "seconds_from_start":time.time()-start_time
                                }
            json.dump(train_log, f, ensure_ascii=False, indent=4)
    

        if (count > early_stop and epoch>=min_epochs):
            print("Stopping early")
            break

    torch.save(student.state_dict(), chpt_path) #final save
    return running_loss, running_test_acc
    
#use model_output_mapping incase test_dataset and model has different label naming
#model_output_mapping should map the model output to the label convention in test dataset    
def predict(model: nn.Module, test_dataset: DataLoader, model_output_mapping:dict=None, use_snr: bool = True):
    model.eval()
    y_true = []
    y_pred = []
    snrs   = [] if use_snr else None
    
    with torch.no_grad():
        for (inputs, target, snr) in tqdm(test_dataset, desc="Predicting Batches", leave=False):
            inputs = inputs.to('cuda').float()
            target = target.to('cuda')

            output = model(inputs)
            pred   = output.argmax(dim=1).tolist()

            if model_output_mapping is not None:
                pred = [model_output_mapping.get(p, p) for p in pred]

            y_true.extend(target.tolist())
            y_pred.extend(pred)
            if use_snr:
                snrs.extend(snr.tolist())

    y_true = np.array(y_true)
    y_pred = np.array(y_pred)
    if use_snr:
        snrs = np.array(snrs)

    return y_pred, y_true, snrs

def export_to_onnx(model:nn.Module,export_path:str,args_inp=torch.randn(1,2,1024).to('cuda'),opset_ver=13):
    model.eval()
    export_qonnx(model.to('cuda'), args=args_inp,export_path=export_path,opset_version=opset_ver)
    # export_onnx_qcdq(model.to('cuda'), args=args_inp,export_path=export_path,opset_version=opset_ver)
