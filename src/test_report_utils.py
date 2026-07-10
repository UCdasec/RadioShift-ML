import matplotlib.pyplot as plt
import numpy as np
import os

class testing_result():
    y_pred=[]
    y_exp=[]
    y_snr=[]
    use_snr:bool=True
    def __init__(self,pred,exp,snr,use_snr=True):
        self.y_pred=pred
        self.y_exp=exp
        self.y_snr=snr
        self.use_snr=use_snr
    def save_file(self,filename:str):
        np.savez_compressed(filename, 
                            pred=self.y_pred, 
                            exp=self.y_exp, 
                            snr=self.y_snr,
                            use_snr=self.use_snr)
    @staticmethod
    def load_file(filename:str)->"testing_result":
        assert os.path.isfile(filename)
        loaded = np.load(filename)
        y_pred = loaded['pred']
        y_exp  = loaded['exp']
        y_snr = loaded['snr']
        use_snr = loaded['use_snr']
        if (len(y_pred)!=len(y_exp)):
            print("WARNING: y_pred and y_exp not equal")
        return testing_result(y_pred,y_exp,y_snr,use_snr)
    
def get_average_accuracy(test_result:testing_result, filter_snr=None, filter_mod=None):
    ye = test_result.y_exp
    yp = test_result.y_pred
    ysnr = test_result.y_snr
    
    correct = 0
    total = 0
    for i in range(len(ye)):
        # If filtering is active, skip samples not in the filter_snr list
        if (test_result.use_snr) and (filter_snr is not None):
            if ysnr[i] not in filter_snr:
                continue

        if (filter_mod is not None):
            if (ye[i] not in filter_mod):
                continue
        
        # Increment total count and check for match
        total += 1
        if int(ye[i]) == int(yp[i]):
            correct += 1

    # Avoid division by zero if filter returns no samples
    if total == 0:
        return 0.0
        
    return correct / total

def get_cm(test_result:testing_result, normalized:bool=True, filter_snr=None, filter_mod=None):
    label_count:int=len(np.unique(test_result.y_exp))
    conf = np.zeros([label_count,label_count])
    confnorm = np.zeros([label_count,label_count])

    ye=test_result.y_exp
    yp=test_result.y_pred
    ysnr=test_result.y_snr
    #raw confusion mat
    for i in range(len(ye)):
        if (test_result.use_snr) and (filter_snr is not None) and (ysnr[i] not in filter_snr):
            continue

        if (filter_mod is not None):
            if (ye[i] not in filter_mod):
                continue
        e = int(ye[i]) #index label of expected -> major axis / y axis
        p = int((yp[i])) #index label of prediction -> minor axis / x axis
        conf[e,p] = conf[e,p] + 1

    if (not normalized):
        return conf
    
    #norm confusion mat
    for i in range(label_count): #go from top down, divide all cells in each row by the sum of each row to normalize. all cells each row should sum up to 1
        row_sum=np.sum(conf[i,:])
        if row_sum>0.0:
            confnorm[i,:] = conf[i,:] / row_sum
        else:
            confnorm[i,:] = 0.0
    return confnorm

def plot_cm(cm,file_save:str, labels=None, cmap=plt.cm.Blues, use_save=True, plot_inline=False, threshold=0.01, normalized:bool=True):  
    if labels is None:
        labels=np.arange(len(cm))
    fntsize=35
    plt.figure(figsize=(10,10))
    plt.imshow(cm, interpolation='nearest', cmap=cmap)
    # plt.title(name)
    # plt.colorbar()
    tick_marks = np.arange(len(labels))
    plt.xticks(tick_marks, labels, rotation=90,fontsize=fntsize*0.7)
    plt.yticks(tick_marks, labels,fontsize=fntsize*0.7)
    plt.tight_layout()
    plt.ylabel('True label',fontsize=fntsize*1.25)
    plt.xlabel('Predicted label',fontsize=fntsize*1.25)

    
    for i in range(cm.shape[0]):
        for j in range(cm.shape[1]):
            if cm[i,j]>threshold or i==j : #condition to show on plot
                txt=f"{int(cm[i, j])}"
                if normalized:
                    txt=f"{int(cm[i, j]*100.0)}"
                plt.text(j, i, txt, 
                         ha="center", va="center",
                         color="white" if cm[i, j] > cm.max()/2 else "black",
                        fontsize=fntsize*0.5)
                
    # plt.plot(np.arange(cm.shape[0]), np.arange(cm.shape[1]), 
    #          color='red', linestyle='--', linewidth=1.5, alpha=0.25)

    plt.grid(visible=True, color='gray', linestyle='--', linewidth=0.5, alpha=0.25)
    
    if use_save:
        plt.savefig(file_save, bbox_inches='tight',format='jpeg')
        
    if plot_inline:
        plt.show()
    else:
        plt.close();