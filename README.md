## YOLO-G: Improved YOLO for Cross Domain Object Detection
**Jian Wei**, **Qinzhao Wang**




## Main requirements

  * **torch == 1.12.0**
  * **Python 3**

## Environmental settings
This repository is developed using python **3.9** on Ubuntu **18.04 LTS**. The CUDA nad CUDNN version is **11.7** and **8.0** respectively. We use **one NVIDIA 3090 GPU card** for training and testing. Other platforms or GPU cards are not fully tested.

## Pretrain models
**The pretrain weights yolov5l in avalibale https://github.com/ultralytics/yolov5/releases/download/v7.0/yolov5l.pt**

## Usage
## we take this work by the help of YOLOair https://github.com/iscyy/yoloair
The usage of YOLO-G is same as YOLO. Take an example:
```bash
# to train YOLO-G on cityscape-->foggy cityscapes:
sh train_GRL.sh
# To validate YOLO-G on foggy cityscape:
python val_GRL.py --weight ./runs/train/**.pt  --data ./data/domain/cityscapes_foggycityscapes.yaml
# To detect YOLO-G on foggy cityscapes:
python detect.py --weight ./runs/train/**.pt --source /your_image_folder
```

## Data and Format
**Refer to [SSDA-YOLO](https://github.com/hnuzhy/SSDA-YOLO)**

## Citing this repository
If you find this code useful in your research, please consider citing us:
```

@article{YOLO-G,
	title={YOLO-G: Improved YOLO for Cross Domain Object Detection},
	author={Jian Wei, Qinzhao Wang},
	year={2023}
}
```
