#problem why using kali
---
## apt source.list
```
#tsinghua mirrors
deb http://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main non-free contrib
#deb-src http://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main non-free contrib

deb http://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling-only main non-free contrib
#deb-src http://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling-only main non-free contrib
```

## vpn 
1. `apt-get install network-manager-openvpn-gnome network-manager-pptp network-manager-pptp-gnome network-manager-strongswan network-manager-vpnc network-manager-vpnc-gnome`
2. restart the network-manager `service network-manager restart`
