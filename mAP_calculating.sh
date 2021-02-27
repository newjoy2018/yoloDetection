echo -e "\n ------ mAP calculating ------\n"
echo -e " Have you just trained one of the following models in this repository? \n YOLOv4, YOLOv4-tiny, YOLOv3, YOLOv3-tiny \n"
echo " If yes, input a corresponding number:"
echo -e " YOLOv4      --> 1 \n YOLOv4-tiny --> 2 \n YOLOv3      --> 3 \n YOLOv3-tiny --> 4\n"
echo -e "if not, please input 0(zero)\n"
read -n1 num
echo " "
echo $num

if [ $num -eq 1 ];then
    echo -e " You have just trained YOLOv4.\n Let's use the trained weights directly."
    cd yolov4
    chmod 744 /darknet/darknet
    ./darknet/darknet detector map cfg/obj.data cfg/yolov4.cfg weights/yolov4_final.weights -thresh 0.5 -iou_thresh 0.5 | tee -a trainingLog/yolov4_mAP_log.txt
    echo -e "\n mAP calculated. Log file has been saved in directory [trainingLog/yolov4_mAP_log.txt]"
    read -n1 -s -p "  Press any key to quit!" var
    echo " "
    exit
elif [ $num -eq 2 ];then
    echo -e " You have just trained YOLOv4-tiny.\n Let's use the trained weights directly."
    cd yolov4-tiny
    chmod 744 /darknet/darknet
    ./darknet/darknet detector map cfg/obj.data cfg/yolov4-tiny.cfg weights/yolov4-tiny_final.weights -thresh 0.5 -iou_thresh 0.5 | tee -a trainingLog/yolov4-tiny_mAP_log.txt
    echo -e "\n mAP calculated. Log file has been saved in directory [trainingLog/yolov4-tiny_mAP_log.txt]"
    read -n1 -s -p "  Press any key to quit!" var
    echo " "
    exit
elif [ $num -eq 3 ];then
    echo -e " You have just trained YOLOv3.\n Let's use the trained weights directly."
    cd yolov3
    chmod 744 /darknet/darknet
    ./darknet/darknet detector map cfg/obj.data cfg/yolov3.cfg weights/yolov3_final.weights -thresh 0.5 -iou_thresh 0.5 | tee -a trainingLog/yolov3_mAP_log.txt
    echo -e "\n mAP calculated. Log file has been saved in directory [trainingLog/yolov3_mAP_log.txt]"
    read -n1 -s -p "  Press any key to quit!" var
    echo " "
    exit
elif [ $num -eq 4 ];then
    echo -e " You have just trained YOLOv3-tiny.\n Let's use the trained weights directly."
    cd yolov3-tiny
    chmod 744 /darknet/darknet
    ./darknet/darknet detector map cfg/obj.data cfg/yolov3-tiny.cfg weights/yolov3-tiny_final.weights -thresh 0.5 -iou_thresh 0.5 | tee -a trainingLog/yolov3-tiny_mAP_log.txt
    echo -e "\n mAP calculated. Log file has been saved in directory [trainingLog/yolov3-tiny_mAP_log.txt]"
    read -n1 -s -p "  Press any key to quit!" var
    echo " "
    exit
elif [ $num -eq 0 ];then
    echo " You haven't trained a model, but mAP-calculating needs a weight file."
    echo -e " Here you have 3 options, press a corresponding key to choose: \n"

    echo " 1. Train a model now (this may take very long time)  --> 1"
    echo " 2. Use the weight file provided by us             --> 2"
    echo " 3. Use your own weight file                    --> 3"
    read -n1 num
    
    if [ $num -eq 1 ];then
        chmod +x training.sh
        ./training.sh
        echo " "
        exit
    elif [ $num -eq 2 ];then
        #wget ...
        echo -e "\n weight file is uploading, please try later."
        #https://drive.google.com/file/d/1-9WdbtBp5saMopy31FyTrhLjKolOyQdO/view?usp=sharing
        read -n1 -s -p "  Press any key to quit!" var
        echo " "
        exit
    elif [ $num -eq 3 ];then
        echo -e "\n please copy your weight file and dataset in this directory [yoloDetection/]"
        echo " and rename them as [yolo-obj_final.weights] and [KITMoMa]"
        read -n1 -s -p " when that's done, press any key to continue" var

        echo -e "\n Please choose the model:\n 1. YOLOv4      --> 1\n 2. YOLOv4-tiny --> 2"
        echo -e " 3. YOLOv3      --> 3\n 4. YOLOv3-tiny --> 4"
        read -n1 num
        
        if [ $num -eq 1 ];then
            mv KITMoMa yolov4/
            mkdir yolov4/weights
            mv yolo-obj_final.weights yolov4/weights/
            cd yolov4/
            chmod +x yolov4_mAP.sh
            ./yolov4_mAP.sh

            echo -e "\n mAP calculated. Log file has been saved in directory [trainingLog/yolov4_mAP_log.txt]"
            read -n1 -s -p "  Press any key to quit!" var
            echo " "
            exit
        elif [ $num -eq 2 ];then
            mv KITMoMa yolov4-tiny/
            mkdir yolov4-tiny/weights
            mv yolo-obj_final.weights yolov4-tiny/weights/
            cd yolov4-tiny/
            chmod +x yolov4-tiny_mAP.sh
            ./yolov4-tiny_mAP.sh

            echo -e "\n mAP calculated. Log file has been saved in directory [trainingLog/yolov4-tiny_mAP_log.txt]"
            read -n1 -s -p "  Press any key to quit!" var
            echo " "
            exit
        elif [ $num -eq 3 ];then
            mv KITMoMa yolov3/
            mkdir yolov3/weights
            mv yolo-obj_final.weights yolov3/weights/
            cd yolov3/
            chmod +x yolov3_mAP.sh
            ./yolov3_mAP.sh

            echo -e "\n mAP calculated. Log file has been saved in directory [trainingLog/yolov3_mAP_log.txt]"
            read -n1 -s -p "  Press any key to quit!" var
            echo " "
            exit
        elif [ $num -eq 4 ];then
            mv KITMoMa yolov3-tiny/
            mkdir yolov3-tiny/weights
            mv yolo-obj_final.weights yolov3-tiny/weights/
            cd yolov3-tiny/
            chmod +x yolov3-tiny_mAP.sh
            ./yolov3-tiny_mAP.sh

            echo -e "\n mAP calculated. Log file has been saved in directory [trainingLog/yolov3-tiny_mAP_log.txt]"
            read -n1 -s -p "  Press any key to quit!" var
            echo " "
            exit
        else
            echo -e "\n Input number should be 1,2,3 or 4"
            read -n1 -s -p "  Press any key to quit!" var
            echo " "
            exit
        fi
    else
        echo -e "\n Input number should be 1,2 or 3"
        read -n1 -s -p "  Press any key to quit!" var
        echo " "
        exit
    fi
else
    echo -e "\n Input number should be 0(zero),1,2,3 or 4"
fi


