# This class removes old puppet files from an assortment of older deployments
class profile::puppet::cleanup_old_puppet {
  file { "/private/etc/puppet/hieradata":
    ensure => absent,
    force  => true,
  }

  file { "/private/etc/r10k.yaml":
    ensure => absent,
  }
}
