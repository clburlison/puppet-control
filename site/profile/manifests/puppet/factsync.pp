# A hack to get around the facts don't sync properly with pluginsync.
# Will recursively sync the fact.d folder(s) to the right directory.
class profile::puppet::factsync {

  if $::facterversion >= '3.0.0' {
    file {"/opt/puppetlabs/facter/facts.d/":
      source  => "puppet:///pluginfacts",
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
      source  => "puppet:///pluginfacts",
      recurse => true,
      purge   => true,
      force   => true,
      owner   => 0,
      group   => 0,
      mode    => '0755',
    }
  }
}
