#!/usr/bin/env bash

set -x

WEIGHTS='yolov5l.pt'
CFG='./configs/domain/yolov5l_GRL.yaml'
DATA='./data/domain/city_foggycity.yaml'
HYP='data/hyps/hyp.scratch-high.yaml'
EPOCH=200
BATCH=8
IMGSIZE=640
NAME='city_foggycity'

python train_GRL.py\
  --weights $WEIGHTS\
  --cfg $CFG\
  --data $DATA\
  --epochs $EPOCH\
  --batch-size $BATCH\
  --img $IMGSIZE\
  --hyp $HYP\
  --name $NAME


