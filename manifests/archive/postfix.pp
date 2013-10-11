class proxmox::postfix {

   package { 'postfix':  
     ensure => installed,
   }

   service { "postfix":
      ensure  => "running",
      enable  => "true",
      require => Package["postfix"],
   }
   
   # add a notify to the file resource
   file { "/etc/postfix/main.cf":
      notify  => Service["postfix"],  # this sets up the relationship
      mode    => 644,
      owner   => "root",
      group   => "root",
      require => Package["postfix"],
      content => template("postfix/main.cf.erb"),
   }

   file { "/etc/aliases":
      notify  => Service["postfix"],  # this sets up the relationship
      mode    => 644,
      owner   => "root",
      group   => "root",
      require => Package["postfix"],
      content => template("postfix/aliases.erb"),
   }

}
