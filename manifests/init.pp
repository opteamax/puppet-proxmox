class proxmox {

  class {'proxmox::sources': stage => 'pre' }
  include proxmox::hosts

  if $kernelrelease =~ /^.*-pve$/ {

    include proxmox::kerneldebian
    include proxmox::packages

  } else {

    # this will reboot the server to get the new kernel running
    file { '/var/tmp/pvekernel.bash':
      source => 'puppet:///modules/proxmox/pvekernel.bash',
      mode => '755',
    } ~> exec { '/bin/bash /var/tmp/pvekernel.bash': }

  }

}




