class proxmox::config {

  file { '/usr/local/bin/diskalert':
    content => template('proxmox/usr/local/bin/cron-diskalert.erb'),
    mode => 755,
  }

  file { '/usr/local/bin/vmlist':
    content => template('proxmox/usr/local/bin/cron-vmlist.erb'),
    mode => 755,
  }

  file { '/etc/cron.d/proxmox':
    content => template('proxmox/etc/cron.d/proxmox'),
  }

}
