class proxmox::packages {
 
  package { 'pve-headers-2.6.32-24-pve':
    ensure => installed,
  }
  package { 'proxmox-ve-2.6.32':
    ensure => installed,
  }
  package { 'lvm2':
    ensure => installed,
  }
  package { 'ksm-control-daemon':
    ensure => installed,
  }
  package { 'vzprocps':
    ensure => installed,
  }
  package { 'open-iscsi':
    ensure => installed,
  }
  package { 'bootlogd':
    ensure => installed,
  }
  package { 'network-manager':
    ensure => purged,
  }

# postfix

}
