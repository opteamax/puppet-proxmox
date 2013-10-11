class proxmox::kerneldebian {

  # remove standard kernel
  package { "linux-image-amd64":
    ensure => purged,
  } -> package { "linux-image-3.2.0-4-amd64":
    ensure => purged,
  } 

# ~> exec { "/usr/sbin/update-grub": } 

}
