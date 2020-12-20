#read -p "Input 1~4 :" num

echo -e "\nPlease choose a model to train:\nFor YOLOv4,      input 1\nFor YOLOv4-tiny, input 2"
echo -e "For YOLOv3,      input 3\nFor YOLOv3-tiny, input 4"
read num

if [ $num -eq 1 ];then
    echo "YOLOv4 has been chosen"
    cd yolov4
    chmod +x yolov4_training.sh
    ./yolov4_training.sh
    exit
elif [ $num -eq 2 ];then
    echo "YOLOv4-tiny has been chosen"
    cd yolov4-tiny
    chmod +x yolov4-tiny_training.sh
    ./yolov4-tiny_training.sh
    exit
elif [ $num -eq 3 ];then
    echo "YOLOv3 has been chosen"
    cd yolov3
    chmod +x yolov3_training.sh
    ./yolov3_training.sh
    exit
elif [ $num -eq 4 ];then
    echo "YOLOv3-tiny has been chosen"
    cd yolov3-tiny
    chmod +x yolov3-tiny_training.sh
    ./yolov3-tiny_training.sh
    exit
else
    echo "Input number should be 1,2,3 or 4"
fi

