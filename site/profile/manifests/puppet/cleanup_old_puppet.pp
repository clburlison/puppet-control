# This class removes old puppet 3 files from an assortment of older deployments
class profile::puppet::cleanup_old_puppet (
){
  file { "/private/etc/puppet/hieradata":
    ensure => absent,
    force  => true,
  }

  file { "/private/etc/r10k.yaml":
    ensure => absent,
  }
  
  file { "/private/etc/puppet":
    ensure => absent,
    force  => true,
  }
}

