#definfing thr first class
class ntpconfig {

#installation of ntp package
package { "ntp":
  ensure => "present",
}

#configuration of ntp file
file {"/etc/ntp.conf":
 ensure  => "present"
# content => "server 0.centos.pool.ntp.org iburst\n",
}

#starting ntp service 
service {"ntpd":
  ensure => "stopped",
}
}

include ntpconfig
