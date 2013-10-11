class proxmox::kernelpve {

  package { "pve-firmware":
    ensure => installed,
  } -> package { "pve-kernel-2.6.32-20-pve":
    ensure => installed,
  } ~> exec { "/usr/sbin/update-grub": } ~> exec { "/sbin/reboot": }

}
