#!/bin/bash

#to see exported file
showmount -e control

#mounting to manage node
mount control:/home/kashi/nfssrv  /mnt/

#verify
df -Th

#direct mounting
echo "control:/home/kashi/nfssrv    /mnt/   nfs defaults    0 0"  >> /etc/fstab