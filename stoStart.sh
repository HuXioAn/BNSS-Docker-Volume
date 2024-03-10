#!/bin/bash

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


docker restart dns11
docker restart openvpnb2bg8
docker restart nextcloud
docker restart nginx
docker restart snort3_g8flex
docker restart freeradius
docker restart openvpnc2b




