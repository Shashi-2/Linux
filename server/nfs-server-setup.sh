#!/bin/bash

yum install nfs-utils -y

mkdir -p /nfssrv

chmod 777 /nfssrv

echo "/home/kashi/nfssrv (rw,sync)" >> /etc/exports

systemctl enable nfs-server.service

firewall-cmd --permanent --add-service=nfs

firewall-cmd --permanent --add-service=mountd

firewall-cmd --permanent --add-service=rpc-bind

firewall-cmd --reload

exportfs -r

exportfs