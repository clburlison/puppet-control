# A hack to get around the facts don't sync properly with pluginsync.
# Will recursively sync the fact.d folder(s) to the right directory.
class profile::puppet::factsync {

  file {"${::settings::pluginfactdest}":
    source  => "puppet:///pluginfacts",
    recurse => true,
    purge   => true,
    force   => true,
    owner   => 0,
    group   => 0,
    mode    => '0755',
  }
}
