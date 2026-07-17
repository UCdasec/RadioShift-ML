import os
import numpy as np
import h5py 

class test_radio_dataset(): #convenient container to hold iq, mod, snr, and test_indices
    all_IQ=None
    all_mod=None
    all_snr=None
    test_indices=[]

    labels_to_index={}
    index_to_label={}    
    def __init__(self,dataset_path:str,
                 iq_key:str,
                 mod_key:str,
                 snr_key:str=None,
                 chunk_length:int=4096):
        assert os.path.isfile(dataset_path)
        np.random.seed(2021) #same seed as training
        print(f"\nloading dataset path: {dataset_path}")
        h5_file = h5py.File(dataset_path,'r')
        print(f"All available keys: {list(h5_file.keys())}")
        self.all_IQ = h5_file[iq_key]
        self.all_mod = h5_file[mod_key][:,0].flatten()
        
        if not snr_key is None:
            self.all_snr = h5_file[snr_key][:,0].flatten()
        
        # Build label <-> index mappings
        unique_labels = sorted(np.unique(self.all_mod))
        self.labels_to_index = {int(label): idx for idx, label in enumerate(unique_labels)}
        self.index_to_label  = {idx: int(label) for idx, label in enumerate(unique_labels)}
        print(f"\nLabel mapping (label->index): \n{self.labels_to_index}\n")
        
        print(f"Raw values shape: {self.all_IQ.shape}")
        print(f"Labels shape: {self.all_mod.shape}")
        
        _test_indices=[]
        for i in range(0,len(self.all_IQ),chunk_length):
            indices_subclass=list(range(i,i+chunk_length))
            split = int(np.ceil(0.8 * chunk_length)) #split 80,10,10
            split2 = int(np.ceil(0.9 * chunk_length))
        
            np.random.shuffle(indices_subclass)
            
            _test_indices.extend(indices_subclass[split2:])
        self.test_indices=sorted(_test_indices)       
        
    def mod_to_idx(self, mod_labels):
        if np.isscalar(mod_labels):
            return self.labels_to_index[int(mod_labels)]
        return np.vectorize(lambda x: self.labels_to_index[int(x)])(np.asarray(mod_labels))

    def idx_to_mod(self, indices):
        if np.isscalar(indices):
            return self.index_to_label[int(indices)]
        return np.vectorize(lambda x: self.index_to_label[int(x)])(np.asarray(indices))

    def __getitem__(self, idx): #override the dataset[idx] function
        if self.all_snr is None:
            # transpose frame into Pytorch channels-first format (NCL = -1,2,1024)
            return self.all_IQ[idx], self.mod_to_idx(self.all_mod[idx]), -9999
        return self.all_IQ[idx], self.mod_to_idx(self.all_mod[idx]), self.all_snr[idx]

    def load_external_test_indices(self, new_test_indices):
        self.test_indices=new_test_indices
