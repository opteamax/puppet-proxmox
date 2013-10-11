class proxmox::hosts {

  # clear host file of unmanaged entries
  resources { 'host': 
    purge => true,
  }

  host { 'localhost.localdomain':
    ip => $ipaddress_lo,
    host_aliases =>  'localhost',
  }

  host { $fqdn:
    ip => $ipaddress_eth0,
    host_aliases => [ $hostname, 'pvelocalhost' ],
  }

}
