#!/bin/bash

tmp=`/bin/cat /boot/grub/grub.cfg | /bin/grep menuentry | /bin/grep pve | /bin/grep -v recovery | /bin/sed "s/menuentry '//" | sed "s/pve'.*$/pve/"`
/usr/sbin/grub-set-default "$tmp"
/bin/cat /etc/default/grub | /bin/sed 's/GRUB_DEFAULT=0/GRUB_DEFAULT="saved"; GRUB_SAVEDEFAULT="true"/' > out && /bin/mv out /etc/default/grub
/usr/sbin/update-grub

/bin/rm $0

