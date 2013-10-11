class proxmox::sources {

   # add key and source for proxmox-ve
   apt::source {'proxmox':
      location    => 'http://mirror.cs.uchicago.edu/proxmox',
      include_src => false,
      release     => $lsbdistcodename,
      repos       => 'pve-no-subscription',
      key         => '9887F95A',
   }

}
