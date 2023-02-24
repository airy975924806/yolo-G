# ——*——code:UTF-8——*——
# Author : airy
# DATA : 2023/1/16 上午9:41
import torch
import torch.nn.functional as F


def DA_loss(features,target):
    loss = 0
    # feature_flatten = []
    # label_flatten = []
    for feature in features:
        # print(feature.shape)
        N,C,H,W = feature.shape
        # print(feature.shape)
        feature = feature.permute(0,2,3,1)
        label = torch.zeros_like(feature) if target == 0 else torch.ones_like(feature)
            # print(label,label.shape)
            # print('label shape is ',label.shape)
            # feature_flatten.append(feature.reshape(N,-1))
            # label_flatten.append(label.reshape(N,-1))
            #
            # feature_end = torch.cat(feature_flatten)
            # label_end = torch.cat(label_flatten).to(feature_end.device)
        feature_end = feature.reshape(N,-1)
        label_end = label.reshape(N,-1)
        _loss = F.binary_cross_entropy_with_logits(feature_end,label_end)
        loss += _loss
            # print(loss)

    return loss/len(features)



# input = [torch.randn(10,3,32,32).cuda()]
# result = DA_loss(input,0)
# print(result)

