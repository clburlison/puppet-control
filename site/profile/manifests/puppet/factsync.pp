# A hack to get around the fact that pluginsync doesn't work properly
# when using 'puppet apply'.
# Will recursively sync the fact.d folder to the right directory.
class profile::puppet::factsync {

  if $::facterversion >= '3.0.0' {
    file {"/opt/puppetlabs/facter/facts.d/":
      source  => "/private/etc/puppetlabs/code/environments/production/site/profile/facts.d",
      recurse => true,
      purge   => true,
      force   => true,
      owner   => 0,
      group   => 0,
      mode    => '0755',
    }
  }
  else {
    file {"/etc/facter/facts.d":
      source  => "/private/etc/puppet/environments/production/modules/profile/facts.d",
      recurse => true,
      purge   => true,
      force   => true,
      owner   => 0,
      group   => 0,
      mode    => '0755',
    }
  }
}
