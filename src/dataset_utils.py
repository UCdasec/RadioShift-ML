import h5py
import numpy as np
import torch

class radio_dataset():
    all_IQ=None
    all_mod=None
    all_snr=None
    train_indices=None
    val_indices=None
    test_indices=None
    train_sampler:torch.utils.data.SubsetRandomSampler
    val_sampler:torch.utils.data.SubsetRandomSampler
    test_sampler:torch.utils.data.SubsetRandomSampler

    labels_to_index={}
    index_to_label={}

    def __init__(self, dataset_path:str,
                 iq_key:str,
                 mod_key:str,
                 snr_key:str=None,
                 chunk_length:int=4096):
        print(f"\n=========================================")
        print(f"loading from {dataset_path}")
        np.random.seed(2021)
        torch.manual_seed(2021)
        
        h5_file = h5py.File(dataset_path,'r')
        print(f"All available keys: {list(h5_file.keys())}")

        print(f"Extracting data key {iq_key}")
        self.all_IQ = h5_file[iq_key]
        
        print("Get labels")
        self.all_mod = h5_file[mod_key][:].flatten() 

        if(snr_key != None): #some dataset doesnt have snr
            print("Get SNR")
            self.all_snr = h5_file[snr_key][:].flatten()
        else:
            self.all_snr=None

        # Build label <-> index mappings
        unique_labels = sorted(np.unique(self.all_mod))
        self.labels_to_index = {int(label): idx for idx, label in enumerate(unique_labels)}
        self.index_to_label  = {idx: int(label) for idx, label in enumerate(unique_labels)}
        print(f"\nLabel mapping (label->index): \n{self.labels_to_index}\n")
        
        print(f"Raw values shape: {self.all_IQ.shape}")
        print(f"Raw values min/max range: {np.min(self.all_IQ)}, {np.max(self.all_IQ)}, {self.all_IQ.dtype}")
        print(f"Labels shape: {self.all_mod.shape}")

        _train_indices = []
        _test_indices = []
        _val_indices = []

        for i in range(0,len(self.all_IQ),chunk_length):
            indices_chunk=list(range(i,i+chunk_length))
            split = int(np.ceil(0.8 * chunk_length)) #split 80,10,10
            split2 = int(np.ceil(0.9 * chunk_length))

            np.random.shuffle(indices_chunk)

            train_indices_subclass = indices_chunk[:split]
            val_indices_subclass = indices_chunk[split:split2]
            test_indices_subclass = indices_chunk[split2:]

            _train_indices.extend(train_indices_subclass)
            _test_indices.extend(test_indices_subclass)
            _val_indices.extend(val_indices_subclass) 

        self.train_indices=_train_indices
        self.test_indices=_test_indices
        self.val_indices=_val_indices

        self.train_sampler = torch.utils.data.SubsetRandomSampler(self.train_indices)
        self.val_sampler = torch.utils.data.SubsetRandomSampler(self.val_indices)
        self.test_sampler = torch.utils.data.SubsetRandomSampler(self.test_indices)

        print('Training set size: ',len(self.train_indices))
        print('Val set size: ',len(self.val_indices))
        print('Test set size: ',len(self.test_indices))
        print(f"=========================================")
    
    def mod_to_idx(self, mod_labels):
        if np.isscalar(mod_labels):
            return self.labels_to_index[int(mod_labels)]
        return np.vectorize(lambda x: self.labels_to_index[int(x)])(np.asarray(mod_labels))

    def idx_to_mod(self, indices):
        if np.isscalar(indices):
            return self.index_to_label[int(indices)]
        return np.vectorize(lambda x: self.index_to_label[int(x)])(np.asarray(indices))

    def __getitem__(self, idx): #mod return as local index, not actual label
        if self.all_snr is None:
            # transpose frame into Pytorch channels-first format (NCL = -1,2,1024)
            return self.all_IQ[idx].transpose(), self.mod_to_idx(self.all_mod[idx]), -9999
        return self.all_IQ[idx].transpose(), self.mod_to_idx(self.all_mod[idx]), self.all_snr[idx]

    def load_external_test_indices(self, new_test_indices):
        self.test_indices=new_test_indices
        self.test_sampler = torch.utils.data.SubsetRandomSampler(self.test_indices)