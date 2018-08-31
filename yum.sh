#!/bin/bash
mkdir /dvd
echo "/dev/cdrom  /dvd  iso9660  defaults  0 0 "  >> /etc/fstab
echo "[xxoo] name=xxoo 
baseurl=file:///dvd 
enabled=1
gpgcheck=0" > /etc/yum.repos.d/xxoo.repo
mount -a
yum  repolist
exit
