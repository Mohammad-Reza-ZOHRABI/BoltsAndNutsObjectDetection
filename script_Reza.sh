#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get upgrade

pip3 install tensorflow

sudo apt-get install libatlas-base-dev

sudo pip3 install pillow lxml jupyter matplotlib cython
sudo apt-get install python-tk

sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install qt4-dev-tools libatlas-base-dev

sudo pip3 install opencv-python

sudo apt-get install protobuf-compiler

mkdir tensorflow1
cd tensorflow1

git clone --depth 1 https://github.com/tensorflow/models.git

sudo nano ~/.bashrc

export PYTHONPATH=$PYTHONPATH:/home/pi/tensorflow1/models/research:/home/pi/tensorflow1/models/research/slim

cd /home/pi/tensorflow1/models/research
protoc object_detection/protos/*.proto --python_out=.

cd /home/pi/tensorflow1/models/research/object_detection

wget http://download.tensorflow.org/models/object_detection/ssdlite_mobilenet_v2_coco_2018_05_09.tar.gz
tar -xzvf ssdlite_mobilenet_v2_coco_2018_05_09.tar.gz