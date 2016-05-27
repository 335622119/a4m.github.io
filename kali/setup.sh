#!/bin/sh

cat > /etc/apt/sources.list <<EOF
#Tsinghua Tuna mirrors
deb http://mirrors.tuna.tsinghua.edu.cn/kali sana main non-free contrib
deb-src http://mirrors.tuna.tsinghua.edu.cn/kali sana main non-free contrib

deb http://mirrors.tuna.tsinghua.edu.cn/kali-security sana/updates contrib non-free main
deb-src http://mirrors.tuna.tsinghua.edu.cn/kali-security sana/updates main non-free contrib
EOF

apt update && apt dist-upgrade -y && apt-get autoremove -y &&apt-get autoclean -y
#安装基础软件
apt install git python-pip -y

#安装sqlmap，nmap
apt install sqlmap nmap

#在/opt里安装lijiejie套装
cd /opt

git clone https://github.com/lijiejie/BBScan.git
cd BBScan && pip install -r requirements.txt && cd /opt

git clone https://github.com/lijiejie/subDomainsBrute.git
pip install dnspython

git clone https://github.com/lijiejie/GitHack.git
git clone https://github.com/lijiejie/IIS_shortname_Scanner.git
git clone https://github.com/lijiejie/htpwdScan.git

#安装其他工具
git clone https://github.com/webhhh/pathscanner.git

