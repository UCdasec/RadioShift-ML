import torch
from torch import nn

# A qnn is a Brevitas version of pytorch's nn. nn stands for neural network.
import brevitas.nn as qnn
from brevitas.quant import Int8Bias
from brevitas.inject.enum import ScalingImplType
from brevitas.inject.defaults import Int8ActPerTensorFloatMinMaxInit

import torchinfo

#all models prefer B,C,T (batch, channel, samples)
#for our cases, we have C=2 => B,2,T

###########################Models dependencies##########################
#not a model, input quantizer for the first input layer of quantized models
class InputQuantizerINT8(Int8ActPerTensorFloatMinMaxInit):
    #Quantize to input_bits
    bit_width = 8
    
    #Min max value of the input. Set to the range value of the input 
    min_val = -128.0 #the min value of the input(dataset) before going through the model
    max_val = 127.0 #the max value of the input(dataset) before going through the model
    scaling_impl_type = ScalingImplType.CONST # Fix the quantization range to [min_val, max_val]

class PWConv1d(nn.Module):
    """Pointwise conv (1x1) + BN + ReLU"""
    def __init__(self, cin: int, cout: int):
        super().__init__()
        self.conv = nn.Conv1d(cin, cout, kernel_size=1, bias=False)
        self.bn   = nn.BatchNorm1d(cout)
        self.act  = nn.ReLU(inplace=True)
    def forward(self, x):
        return self.act(self.bn(self.conv(x)))

class DSBlock(nn.Module):
    """Depthwise separable block: DW(k,s) -> PW"""
    def __init__(self, cin: int, cout: int, k: int, s: int = 1):
        super().__init__()
        self.dw = DWConv1d(cin, k=k, s=s)
        self.pw = PWConv1d(cin, cout)
    def forward(self, x):
        return self.pw(self.dw(x))
    
class DWConv1d(nn.Module):
    """Depthwise conv + BN + ReLU"""
    def __init__(self, ch: int, k: int, s: int = 1, p: int | None = None):
        super().__init__()
        if p is None: p = k // 2
        self.conv = nn.Conv1d(ch, ch, kernel_size=k, stride=s, padding=p, groups=ch, bias=False)
        self.bn   = nn.BatchNorm1d(ch)
        self.act  = nn.ReLU(inplace=True)
    def forward(self, x):
        return self.act(self.bn(self.conv(x)))

# Class name is a bit misleading since we are not using grouped convolution
# I could not get FINN to work with Brevitas grouped convolutions, so groups=1 for now
# The Regular DSNetmodels use grouped convolutions (groups=ch) above
class QDWConv1d(nn.Module):
    """Quantized depthwise conv + BN + QuantReLU"""
    def __init__(self, ch: int, k: int, s: int = 1, p: int | None = None,
                 w_bits: int = 8, a_bits: int = 8):
        super().__init__()
        if p is None: p = k // 2
        # self.conv = qnn.QuantConv1d(ch, ch, kernel_size=k, stride=s, padding=p,
        #                             groups=ch, weight_bit_width=w_bits, bias=False)
        self.conv = qnn.QuantConv1d(ch, ch, kernel_size=k, stride=s, padding=p,
                                    weight_bit_width=w_bits, bias=False)
        self.bn  = nn.BatchNorm1d(ch)
        self.act = qnn.QuantReLU(bit_width=a_bits)
    def forward(self, x):
        return self.act(self.bn(self.conv(x)))


class QPWConv1d(nn.Module):
    """Quantized pointwise conv (1×1) + BN + QuantReLU"""
    def __init__(self, cin: int, cout: int, w_bits: int = 8, a_bits: int = 8):
        super().__init__()
        self.conv = qnn.QuantConv1d(cin, cout, kernel_size=1,
                                    weight_bit_width=w_bits, bias=False)
        self.bn  = nn.BatchNorm1d(cout)
        self.act = qnn.QuantReLU(bit_width=a_bits)

    def forward(self, x):
        return self.act(self.bn(self.conv(x)))


class QDSBlock(nn.Module):
    """Quantized depthwise separable block: QDW → QPW"""
    def __init__(self, cin: int, cout: int, k: int, s: int = 1,
                 w_bits: int = 8, a_bits: int = 8):
        super().__init__()
        self.dw = QDWConv1d(cin, k=k, s=s, w_bits=w_bits, a_bits=a_bits)
        self.pw = QPWConv1d(cin, cout, w_bits=w_bits, a_bits=a_bits)

    def forward(self, x):
        return self.pw(self.dw(x))
########################################################################

#Baseline VGG10 using pure Pytorch
class VGG10(nn.Module):
    def __init__(self, output_size:int=15):
        super().__init__()
        filters_conv = 64
        filters_dense = 128
        
        # Conv block 1
        self.conv1 = nn.Conv1d(2, filters_conv, 3, padding=1)
        self.bn1 = nn.BatchNorm1d(filters_conv)
        self.relu1 = nn.ReLU()
        self.pool1 = nn.MaxPool1d(2)
        
        # Conv block 2
        self.conv2 = nn.Conv1d(filters_conv, filters_conv, 3, padding=1)
        self.bn2 = nn.BatchNorm1d(filters_conv)
        self.relu2 = nn.ReLU()
        self.pool2 = nn.MaxPool1d(2)
        
        # Conv block 3
        self.conv3 = nn.Conv1d(filters_conv, filters_conv, 3, padding=1)
        self.bn3 = nn.BatchNorm1d(filters_conv)
        self.relu3 = nn.ReLU()
        self.pool3 = nn.MaxPool1d(2)
        
        # Conv block 4
        self.conv4 = nn.Conv1d(filters_conv, filters_conv, 3, padding=1)
        self.bn4 = nn.BatchNorm1d(filters_conv)
        self.relu4 = nn.ReLU()
        self.pool4 = nn.MaxPool1d(2)
        
        # Conv block 5
        self.conv5 = nn.Conv1d(filters_conv, filters_conv, 3, padding=1)
        self.bn5 = nn.BatchNorm1d(filters_conv)
        self.relu5 = nn.ReLU()
        self.pool5 = nn.MaxPool1d(2)
        
        # Conv block 6
        self.conv6 = nn.Conv1d(filters_conv, filters_conv, 3, padding=1)
        self.bn6 = nn.BatchNorm1d(filters_conv)
        self.relu6 = nn.ReLU()
        self.pool6 = nn.MaxPool1d(2)
        
        # Conv block 7
        self.conv7 = nn.Conv1d(filters_conv, filters_conv, 3, padding=1)
        self.bn7 = nn.BatchNorm1d(filters_conv)
        self.relu7 = nn.ReLU()
        self.pool7 = nn.MaxPool1d(2)
        
        self.flatten = nn.Flatten()
        
        # Dense block 1
        self.fc1 = nn.Linear(filters_conv*8, filters_dense)
        self.bn8 = nn.BatchNorm1d(filters_dense)
        self.relu8 = nn.ReLU()
        
        # Dense block 2
        self.fc2 = nn.Linear(filters_dense, filters_dense)
        self.bn9 = nn.BatchNorm1d(filters_dense)
        self.relu9 = nn.ReLU()
        
        # Output layer
        self.fc3 = nn.Linear(filters_dense, output_size, bias=True)

    def forward(self, x):
        # Conv blocks
        x = self.pool1(self.relu1(self.bn1(self.conv1(x))))
        x = self.pool2(self.relu2(self.bn2(self.conv2(x))))
        x = self.pool3(self.relu3(self.bn3(self.conv3(x))))
        x = self.pool4(self.relu4(self.bn4(self.conv4(x))))
        x = self.pool5(self.relu5(self.bn5(self.conv5(x))))
        x = self.pool6(self.relu6(self.bn6(self.conv6(x))))
        x = self.pool7(self.relu7(self.bn7(self.conv7(x))))
        
        x = self.flatten(x)
        
        # Dense blocks
        x = self.relu8(self.bn8(self.fc1(x)))
        x = self.relu9(self.bn9(self.fc2(x)))
        x = self.fc3(x)
        
        return x
    
#Quantized VGG10 using Brevitas
class VGG10_quant(nn.Module):
    def __init__(self, output_size:int=15, w_bits:int=8, a_bits:int=8):
        super().__init__()
        filters_conv = 64
        filters_dense = 128
        
        #input quant
        self.qinput = qnn.QuantHardTanh(act_quant=InputQuantizerINT8)

        # Conv block 1
        self.conv1 = qnn.QuantConv1d(2, filters_conv, 3, padding=1, weight_bit_width=w_bits, bias=False)
        self.bn1 = nn.BatchNorm1d(filters_conv)
        self.relu1 = qnn.QuantReLU(bit_width=a_bits)
        self.pool1 = nn.MaxPool1d(2)
        
        # Conv block 2
        self.conv2 = qnn.QuantConv1d(filters_conv, filters_conv, 3, padding=1, weight_bit_width=w_bits, bias=False)
        self.bn2 = nn.BatchNorm1d(filters_conv)
        self.relu2 = qnn.QuantReLU(bit_width=a_bits)
        self.pool2 = nn.MaxPool1d(2)
        
        # Conv block 3
        self.conv3 = qnn.QuantConv1d(filters_conv, filters_conv, 3, padding=1, weight_bit_width=w_bits, bias=False)
        self.bn3 = nn.BatchNorm1d(filters_conv)
        self.relu3 = qnn.QuantReLU(bit_width=a_bits)
        self.pool3 = nn.MaxPool1d(2)
        
        # Conv block 4
        self.conv4 = qnn.QuantConv1d(filters_conv, filters_conv, 3, padding=1, weight_bit_width=w_bits, bias=False)
        self.bn4 = nn.BatchNorm1d(filters_conv)
        self.relu4 = qnn.QuantReLU(bit_width=a_bits)
        self.pool4 = nn.MaxPool1d(2)
        
        # Conv block 5
        self.conv5 = qnn.QuantConv1d(filters_conv, filters_conv, 3, padding=1, weight_bit_width=w_bits, bias=False)
        self.bn5 = nn.BatchNorm1d(filters_conv)
        self.relu5 = qnn.QuantReLU(bit_width=a_bits)
        self.pool5 = nn.MaxPool1d(2)
        
        # Conv block 6
        self.conv6 = qnn.QuantConv1d(filters_conv, filters_conv, 3, padding=1, weight_bit_width=w_bits, bias=False)
        self.bn6 = nn.BatchNorm1d(filters_conv)
        self.relu6 = qnn.QuantReLU(bit_width=a_bits)
        self.pool6 = nn.MaxPool1d(2)
        
        # Conv block 7
        self.conv7 = qnn.QuantConv1d(filters_conv, filters_conv, 3, padding=1, weight_bit_width=w_bits, bias=False)
        self.bn7 = nn.BatchNorm1d(filters_conv)
        self.relu7 = qnn.QuantReLU(bit_width=a_bits)
        self.pool7 = nn.MaxPool1d(2)
        
        self.flatten = nn.Flatten()
        
        # Dense block 1
        self.fc1 = qnn.QuantLinear(filters_conv*8, filters_dense, weight_bit_width=w_bits, bias=False)
        self.bn8 = nn.BatchNorm1d(filters_dense)
        self.relu8 = qnn.QuantReLU(bit_width=a_bits)
        
        # Dense block 2
        self.fc2 = qnn.QuantLinear(filters_dense, filters_dense, weight_bit_width=w_bits, bias=False)
        self.bn9 = nn.BatchNorm1d(filters_dense)
        self.relu9 = qnn.QuantReLU(bit_width=a_bits, return_quant_tensor=True)
        
        # Output layer
        self.fc3 = qnn.QuantLinear(filters_dense, output_size, weight_bit_width=w_bits, bias=True, bias_quant=Int8Bias)

    def forward(self, x):
        x = self.qinput(x)

        # Conv blocks
        x = self.pool1(self.relu1(self.bn1(self.conv1(x))))
        x = self.pool2(self.relu2(self.bn2(self.conv2(x))))
        x = self.pool3(self.relu3(self.bn3(self.conv3(x))))
        x = self.pool4(self.relu4(self.bn4(self.conv4(x))))
        x = self.pool5(self.relu5(self.bn5(self.conv5(x))))
        x = self.pool6(self.relu6(self.bn6(self.conv6(x))))
        x = self.pool7(self.relu7(self.bn7(self.conv7(x))))
        
        x = self.flatten(x)
        
        # Dense blocks
        x = self.relu8(self.bn8(self.fc1(x)))
        x = self.relu9(self.bn9(self.fc2(x)))
        x = self.fc3(x)
        
        return x

class VGG10_big(nn.Module):
    def __init__(self, num_classes=15):
        super().__init__()

        self.features = nn.Sequential(
            #Block 1
            # Conv1D(in_channel, out_channel, kernel_size, padding) 
          
            nn.Conv1d(2, 32, kernel_size=3, padding=1),
            nn.BatchNorm1d(32), 
            nn.ReLU(), # looks at every number in data tensor and if number is +ve, keep it and if negative then turn it to 0. (brings non linearity)

            nn.Conv1d(32, 32, kernel_size=3, padding=1),
            nn.BatchNorm1d(32),
            nn.ReLU(),
            nn.MaxPool1d(kernel_size=2),

            # Block 2
            nn.Conv1d(32, 64, kernel_size=3, padding=1),
            nn.BatchNorm1d(64),
            nn.ReLU(),

            nn.Conv1d(64, 64, kernel_size=3, padding=1),
            nn.BatchNorm1d(64),
            nn.ReLU(),
            nn.MaxPool1d(kernel_size=2), # sliding window that calculates max value. since, sliding window/time step is 2 here, the output from the layer above i.e. ReLu has say 1 and 0.2 in time steps 1 and 2, then it only keeps 1 and discards 0.2
            # Block 3
            nn.Conv1d(64, 128, kernel_size=3, padding=1),
            nn.BatchNorm1d(128),
            nn.ReLU(),

            nn.Conv1d(128, 128, kernel_size=3, padding=1),
            nn.BatchNorm1d(128),
            nn.ReLU(),
            nn.MaxPool1d(kernel_size=2),

            # Block 4
            nn.Conv1d(128, 128, kernel_size=3, padding=1),
            nn.BatchNorm1d(128),
            nn.ReLU(),

            nn.Conv1d(128, 128, kernel_size=3, padding=1),
            nn.BatchNorm1d(128),
            nn.ReLU(), # adds non linearity (negative values to 0 and keep positive values)

            # Reduce time dimension
            nn.AdaptiveAvgPool1d(1), # this reduces the time step to exact;y 1. say for example: the convolutional blocks have compressed the network to 32 channels over 4 time steps (32,4). this basically changes it to (32,1)
        # the point of it is to have a linear layer to look at and then have our classifier make a prediction.
        )

        self.classifier = nn.Sequential(
            nn.Flatten(), # changes shape to one lower dimension
            nn.Linear(128, num_classes) # classifies the 128 features to 15 signal types
        )

    def forward(self, x):
        # input x: (batch, 1024, 2)

        x = self.features(x)
        x = self.classifier(x)

        return x

class DSNetSmall(nn.Module):
    """
    ~10–15k params for C=11. Good 'floor' model.
    in: [B, 2, T]
    """
    def __init__(self, output_size: int, in_ch: int = 2, width: int = 12):
        super().__init__()
        c1, c2, c3 = width, width*2, width*2  # 12, 24, 24
        self.stem = nn.Sequential(
            nn.Conv1d(in_ch, c1, kernel_size=5, stride=2, padding=2, bias=False),
            nn.BatchNorm1d(c1), nn.ReLU(inplace=True),
        )
        self.b1 = DSBlock(c1, c2, k=9, s=2)
        self.b2 = DSBlock(c2, c3, k=7, s=2)

        # Input length is fixed to 1024 in this pipeline:
        # 1024 -> 512 (stem) -> 256 (b1) -> 128 (b2), then 7x MaxPool1d(2) -> 1.
        self.pool = nn.Sequential(*[nn.MaxPool1d(2) for _ in range(7)])
        self.head = nn.Linear(c3, output_size)

    def forward(self, x):
        x = self.stem(x)
        x = self.b1(x)
        x = self.b2(x)
        x = self.pool(x)
        if x.shape[-1] != 1:
            raise ValueError(f"DSNetSmall expected temporal dim 1 before head, got {x.shape[-1]}")
        x = torch.flatten(x, start_dim=1)
        return self.head(x)

class DSNetSmall_quant(nn.Module):
    """
    Quantized version of DSNetSmall using Brevitas.
    in: [B, 2, T]
    """
    def __init__(self, output_size: int, in_ch: int = 2, width: int = 12,
                 w_bits: int = 8, a_bits: int = 8):
        super().__init__()
        c1, c2, c3 = width, width*2, width*2  # 12, 24, 24

        # Input quantizer
        self.qinput = qnn.QuantHardTanh(act_quant=InputQuantizerINT8)

        # Stem: regular Conv1d → quant version
        self.stem = nn.Sequential(
            qnn.QuantConv1d(in_ch, c1, kernel_size=5, stride=2, padding=2,
                            weight_bit_width=w_bits, bias=False),
            nn.BatchNorm1d(c1),
            qnn.QuantReLU(bit_width=a_bits),
        )

        # DSBlocks need to be replaced with quant-aware versions
        self.b1 = QDSBlock(c1, c2, k=9, s=2, w_bits=w_bits, a_bits=a_bits)
        self.b2 = QDSBlock(c2, c3, k=7, s=2, w_bits=w_bits, a_bits=a_bits)

        self.pool = nn.Sequential(*[nn.MaxPool1d(2) for _ in range(7)])

        #need to return quant tensor before final linear, so add a relu here
        self.pre_head_act = qnn.QuantReLU(bit_width=a_bits, return_quant_tensor=True)

        self.flatten = nn.Flatten()

        # Output layer with quantized linear + Int8Bias (matches VGG10_quant pattern)
        self.head = qnn.QuantLinear(c3, output_size, weight_bit_width=w_bits,
                                    bias=True, bias_quant=Int8Bias)

    def forward(self, x):
        x = self.qinput(x)
        x = self.stem(x)
        x = self.b1(x)
        x = self.b2(x)
        x = self.pool(x)
        x = self.pre_head_act(x)
        if x.shape[-1] != 1:
            raise ValueError(f"DSNetSmall_quant expected temporal dim 1, got {x.shape[-1]}")
        x = self.flatten(x)
        return self.head(x)

class DSNetMedium(nn.Module):
    """
    ~40–60k params for C=11. Balanced tiny model.
    """
    def __init__(self, num_classes: int, in_ch: int = 2, width: int = 24):
        super().__init__()
        c1, c2, c3, c4 = width, width*2, width*2, width*3  # 24, 48, 48, 72
        self.stem = nn.Sequential(
            nn.Conv1d(in_ch, c1, kernel_size=7, stride=2, padding=3, bias=False),
            nn.BatchNorm1d(c1), nn.ReLU(inplace=True),
        )
        self.b1 = DSBlock(c1, c2, k=9, s=2)
        self.b2 = DSBlock(c2, c3, k=7, s=2)
        self.b3 = DSBlock(c3, c4, k=5, s=2)
        # Input length is fixed to 1024 in this pipeline:
        # 1024 -> 512 (stem) -> 256 (b1) -> 128 (b2) -> 64 (b3), then 6x MaxPool1d(2) -> 1.
        self.pool = nn.Sequential(*[nn.MaxPool1d(2) for _ in range(6)])
        self.head = nn.Linear(c4, num_classes)

    def forward(self, x):
        x = self.stem(x)
        x = self.b1(x)
        x = self.b2(x)
        x = self.b3(x)
        x = self.pool(x)
        if x.shape[-1] != 1:
            raise ValueError(f"DSNetMedium expected temporal dim 1 before head, got {x.shape[-1]}")
        x = torch.flatten(x, start_dim=1)
        return self.head(x)

class DSNetMedium_quant(nn.Module):
    """
    ~40–60k params for C=11. Balanced tiny model.
    """
    def __init__(self, num_classes: int, in_ch: int = 2, width: int = 24,
    w_bits: int = 8, a_bits: int = 8):
        super().__init__()
        # Input quantizer
        self.qinput = qnn.QuantHardTanh(act_quant=InputQuantizerINT8)

        c1, c2, c3, c4 = width, width*2, width*2, width*3  # 24, 48, 48, 72
        self.stem = nn.Sequential(
            qnn.QuantConv1d(in_ch, c1, kernel_size=7, stride=2, padding=3, 
            bias=False, weight_bit_width=w_bits),
            nn.BatchNorm1d(c1), 
            qnn.QuantReLU(bit_width=a_bits),
        )
        self.b1 = QDSBlock(c1, c2, k=9, s=2,w_bits=w_bits, a_bits=a_bits)
        self.b2 = QDSBlock(c2, c3, k=7, s=2,w_bits=w_bits, a_bits=a_bits)
        self.b3 = QDSBlock(c3, c4, k=5, s=2,w_bits=w_bits, a_bits=a_bits)
        # Input length is fixed to 1024 in this pipeline:
        # 1024 -> 512 (stem) -> 256 (b1) -> 128 (b2) -> 64 (b3), then 6x MaxPool1d(2) -> 1.
        self.pool = nn.Sequential(*[nn.MaxPool1d(2) for _ in range(6)])
        #need to return quant tensor before final linear, so add a relu here
        self.pre_head_act = qnn.QuantReLU(bit_width=a_bits, return_quant_tensor=True)
        self.flatten = nn.Flatten()
        # Output layer with quantized linear + Int8Bias (matches VGG10_quant pattern)
        self.head = qnn.QuantLinear(c4, num_classes, weight_bit_width=w_bits,
                                    bias=True, bias_quant=Int8Bias)

    def forward(self, x):
        x= self.qinput(x)
        x = self.stem(x)
        x = self.b1(x)
        x = self.b2(x)
        x = self.b3(x)
        x = self.pool(x)
        x=self.pre_head_act(x)
        if x.shape[-1] != 1:
            raise ValueError(f"DSNetMedium expected temporal dim 1 before head, got {x.shape[-1]}")
        x = self.flatten(x)
        return self.head(x)

class DSNetLarge(nn.Module):
    """
    We'll get ~120–170k params for C=11. 
    """
    def __init__(self, num_classes: int, in_ch: int = 2, width: int = 32):
        super().__init__()
        c1, c2, c3, c4 = width, width*2, width*3, width*3  # 32, 64, 96, 96
        self.stem = nn.Sequential(
            nn.Conv1d(in_ch, c1, kernel_size=7, stride=2, padding=3, bias=False),
            nn.BatchNorm1d(c1), nn.ReLU(inplace=True),
        )
        self.b1 = DSBlock(c1, c2, k=9, s=2)
        self.b2 = DSBlock(c2, c3, k=7, s=2)
        self.b3 = DSBlock(c3, c4, k=5, s=2)

        # Input length is  forced to 1024 in this 
        # pipeline:
        # 1024 -> 512 (stem) -> 256 (b1) -> 128 (b2) -> 64 (b3), then 6x MaxPool1d(2) -> 1.
        self.pool = nn.Sequential(*[nn.MaxPool1d(2) for _ in range(6)])
        self.head = nn.Linear(c4, num_classes)

    def forward(self, x):
        x = self.stem(x)
        x = self.b1(x)
        x = self.b2(x)
        x = self.b3(x)
        x = self.pool(x)
        if x.shape[-1] != 1:
            raise ValueError(f"DSNetLarge expected temporal dim 1 before head, got {x.shape[-1]}")
        x = torch.flatten(x, start_dim=1)
        return self.head(x)
        
class DSNetLarge_quant(nn.Module):
    """
    Quantized version of DSNetLarge using Brevitas.
    ~120–170k params for C=11.
    in: [B, 2, T]
    """
    def __init__(self, num_classes: int, in_ch: int = 2, width: int = 32,
                 w_bits: int = 8, a_bits: int = 8):
        super().__init__()
        c1, c2, c3, c4 = width, width*2, width*3, width*3  # 32, 64, 96, 96

        # Input quantizer
        self.qinput = qnn.QuantHardTanh(act_quant=InputQuantizerINT8)

        self.stem = nn.Sequential(
            qnn.QuantConv1d(in_ch, c1, kernel_size=7, stride=2, padding=3,
                            bias=False, weight_bit_width=w_bits),
            nn.BatchNorm1d(c1),
            qnn.QuantReLU(bit_width=a_bits),
        )
        self.b1 = QDSBlock(c1, c2, k=9, s=2, w_bits=w_bits, a_bits=a_bits)
        self.b2 = QDSBlock(c2, c3, k=7, s=2, w_bits=w_bits, a_bits=a_bits)
        self.b3 = QDSBlock(c3, c4, k=5, s=2, w_bits=w_bits, a_bits=a_bits)

        # 1024 -> 512 (stem) -> 256 (b1) -> 128 (b2) -> 64 (b3), then 6x MaxPool1d(2) -> 1.
        self.pool = nn.Sequential(*[nn.MaxPool1d(2) for _ in range(6)])
        self.flatten = nn.Flatten()
        # Return quant tensor before final linear
        self.pre_head_act = qnn.QuantReLU(bit_width=a_bits, return_quant_tensor=True)

        self.head = qnn.QuantLinear(c4, num_classes, weight_bit_width=w_bits,
                                    bias=True, bias_quant=Int8Bias)

    def forward(self, x):
        x = self.qinput(x)
        x = self.stem(x)
        x = self.b1(x)
        x = self.b2(x)
        x = self.b3(x)
        x = self.pool(x)
        x = self.pre_head_act(x)
        if x.shape[-1] != 1:
            raise ValueError(f"DSNetLarge_quant expected temporal dim 1 before head, got {x.shape[-1]}")
        x = self.flatten(x)
        return self.head(x)
#################################Utils#######################
def print_model_tree(model:nn.Module):
    torchinfo.summary(model,input_size=(1,2,1024),depth=2);

def load_model_pth(model:nn.Module,pth_path:str):
    model.load_state_dict(torch.load(pth_path))
    model.to('cuda') 

