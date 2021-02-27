import inspect
import os
import random
import sys
def extract_log(log_file,new_log_file,key_word):
  with open(log_file, 'r') as f:
    with open(new_log_file, 'w') as train_log:
      for line in f:
        if 'nan' in line:
          continue
        if key_word in line:
          train_log.write(line)
  f.close()
  train_log.close()

extract_log('yolov4-tinyLog.txt','yolov4-tinyLog_formatted.csv','avg loss')
