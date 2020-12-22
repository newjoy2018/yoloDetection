# yoloDetection

## Steps
### 1. Clone to local
```sh
git clone https://github.com/newjoy2018/yoloDetection.git
cd yoloDetection
```
### 2. Put your dataset here
Put your dataset into directory **yoloDetection**, and rename it as **KITMoMa**.  
Here we support XML labels and TXT labels

### 3. Choose model and Run
Now we support 4 models, YOLOv4, YOLOv4-tiny, YOLOv3, YOLOv3-tiny

```
chmod +x run.sh
./run.sh
```





Reference: AlexyAB https://github.com/AlexeyAB/darknet#improvements-in-this-repository

@misc{darknet13,
  author =   {Joseph Redmon},
  title =    {Darknet: Open Source Neural Networks in C},
  howpublished = {\url{http://pjreddie.com/darknet/}},
  year = {2013--2016}
}
