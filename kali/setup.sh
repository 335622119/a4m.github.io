#!/bin/sh

cat > /etc/apt/sources.list <<EOF
#Tsinghua Tuna mirrors
deb http://mirrors.tuna.tsinghua.edu.cn/kali sana main non-free contrib
deb-src http://mirrors.tuna.tsinghua.edu.cn/kali sana main non-free contrib

deb http://mirrors.tuna.tsinghua.edu.cn/kali-security sana/updates contrib non-free main
deb-src http://mirrors.tuna.tsinghua.edu.cn/kali-security sana/updates main non-free contrib
EOF

apt update
apt install git python-pip -y

cd /opt

git clone https://github.com/lijiejie/BBScan.git
cd BBScan && pip install -r requirements.txt && cd /opt

git clone https://github.com/lijiejie/subDomainsBrute.git
pip install dnspython

git clone https://github.com/lijiejie/GitHack.git

