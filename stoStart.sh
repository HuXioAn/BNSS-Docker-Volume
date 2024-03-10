#!/bin/bash


ifconfig enp0s3:1 192.168.1.11 netmask 255.255.255.0 up
ifconfig enp0s3:2 192.168.1.12 netmask 255.255.255.0 up
ifconfig enp0s3:3 192.168.1.13 netmask 255.255.255.0 up
ifconfig enp0s3:4 192.168.1.14 netmask 255.255.255.0 up
ifconfig enp0s3:5 192.168.1.15 netmask 255.255.255.0 up
ifconfig enp0s3:6 192.168.1.16 netmask 255.255.255.0 up


docker restart dns11
docker restart openvpnb2bg8
docker restart nextcloud
docker restart nginx
docker restart snort3_g8flex
docker restart freeradius
docker restart openvpnc2b




