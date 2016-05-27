#!/bin/sh

apt update
apt install git python-pip -y

cd /opt

git clone https://github.com/lijiejie/BBScan.git
cd BBScan && pip install -r requirements.txt && cd /opt

git clone https://github.com/lijiejie/subDomainsBrute.git
pip install dnspython

git clone https://github.com/lijiejie/GitHack.git

