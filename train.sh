#!/usr/bin/env bash

set -x

WEIGHTS='yolov5l.pt'
CFG='./configs/domain/yolov5l.yaml'
DATA='./data/domain/kitti_to_cityscaps.yaml'
HYP='data/hyps/hyp.scratch-high.yaml'
EPOCH=200
BATCH=16
IMGSIZE=960
NAME='soure_only_yolov5l_kitti_city'

python train.py\
  --weights $WEIGHTS\
  --cfg $CFG\
  --data $DATA\
  --epochs $EPOCH\
  --batch-size $BATCH\
  --img $IMGSIZE\
  --name $NAME\
  --hyp $HYP


