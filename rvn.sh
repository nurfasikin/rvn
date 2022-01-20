sudo apt update && sudo apt install proxychains -y

sudo sed -i 's/socks4/socks5/' /etc/proxychains.conf && sudo sed -i 's/127.0.0.1/98.162.96.53/' /etc/proxychains.conf && sudo sed -i 's/9050/10663/' /etc/proxychains.conf

wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar -xvf hellminer_cpu_linux.tar.gz && proxychains ./hellminer -c stratum+tcp://eu.luckpool.net:3956#xnsub -u RGVegWzDKhuPUAKJybftAZm4BXShNFPCYe.test -p x --cpu 8
