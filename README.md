# Linux NFS Server Setup

## Project Overview

In this project, I configured an NFS server on Linux
and connected a Linux client to the NFS server for
shared file storage.

## Technologies Used

- Linux
- NFS
- Bash
- systemctl
- mount
- firewalld

## Architecture

NFS Server
    |
    | NFS Share
    |
Linux Client

## NFS Server Setup

Install NFS packages:

yum install nfs-utils -y

Enable NFS service:

systemctl enable nfs-server.service

Create shared directory:

mkdir -p /nfssrv

Set permissions:

chmod 777 /nfssrv

Configure export:

vim /etc/exports

Add:

/home/user_name/nfssrv (rw,sync)

Apply configuration:

exportfs -r

Check exports:

exportfs

## NFS Client Setup

Install NFS package:

yum install nfs-utils -y

Create mount point:

mkdir /mnt/

Mount NFS share:

mount <NFS_SERVER_IP>:/home/username/nfssrv /mnt/nfs

Verify:

df -h

## Testing

Created a file on the NFS client:

touch /mnt/nfs/test.txt

The file was successfully visible from the NFS server.

## What I Learned

- NFS server configuration
- NFS client configuration
- /etc/exports
- exportfs
- Mounting remote filesystems
- systemctl
- Linux permissions
- Basic firewall configuration