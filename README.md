puppet-proxmox
==============

A module that helps install proxmox. This IS a hack, and probably won't work for you.

Kernel gets installed during preseed.
Puppet needs to run one more time after reboot to install all the proxmox packages.
  It is recommended to reboot one more time after this install, but it doesn't seem necessary.

All other configuration of a cluster is manual for now.
