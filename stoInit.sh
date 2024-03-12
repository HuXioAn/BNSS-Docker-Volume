#!/bin/bash

currentDir=$(pwd)
ipNum=6
expected_args=1

if [ "$#" -eq "$expected_args" ]; then
    echo "[*]Interface: $1"
else
    echo "[!]Enter an interface as argument."
fi



for i in $(seq 1 $ipNum); do
    interface="$1:$i"
    ifconfig "$interface" 192.168.1.$((10+i)) netmask 255.255.255.0 up
done


docker run --name dns11 -d -p 192.168.1.11:53:53/udp -p 192.168.1.11:53:53/tcp -p 192.168.1.11:853:853/tcp -v "$currentDir"/dnsVolume/unbound/unbound.conf:/opt/unbound/etc/unbound/unbound.conf:ro -v "$currentDir"/dnsVolume/unbound/tls:/opt/unbound/etc/unbound/tls -v "$currentDir"/dnsVolume/unbound/logs:/opt/unbound/unbound.log --restart=always redbirdyi/nds

docker run -d --cap-add=NET_ADMIN -p 192.168.1.13:1194:1194/udp --name openvpnb2bg8 zoctyfs/openvpnb2bg8acme:1.0

docker run -d --cap-add=NET_ADMIN -p 192.168.1.14:1194:1194/udp --name openvpnc2b hohsu/c2bserver

docker run -d --name freeradius -p 192.168.1.16:1812:1812/udp -p 192.168.1.16:1813:1813/udp zoctyfs/freeradiusg8acme:5.0


docker run --name nginx -p 192.168.1.12:443:443 -v "$currentDir"/nginxVolume/conf/nginx.conf:/etc/nginx/nginx.conf -v "$currentDir"/nginxVolume/conf/conf.d:/etc/nginx/conf.d -v "$currentDir"/nginxVolume/html:/usr/share/nginx/html -d nginx 

docker run -d --name nextcloud -p 192.168.1.15:80:80 -v "$currentDir"/nextcloudVolume:/var/www/html nextcloud







