# yoloDetection

## Functions
1. training with your own dataset for YOLOv4, YOLOv4-tiny, YOLOv3, YOLOv3-tiny
2. mAP calculating with the four models above. 

## Steps
### 1. Clone to local
```sh
git clone https://github.com/newjoy2018/yoloDetection.git
cd yoloDetection
```
### 2. Put your dataset here
Put your dataset into directory **yoloDetection**, and rename it as **KITMoMa**.  
Here we support XML labels and TXT labels

### 3. Choose a model and Run
Now we support 4 models, YOLOv4, YOLOv4-tiny, YOLOv3, YOLOv3-tiny

```
chmod +x training.sh
./training.sh
```
or
```
chmod +x training.sh
./mAPcalculating.sh
```





Reference: AlexyAB https://github.com/AlexeyAB/darknet#improvements-in-this-repository

