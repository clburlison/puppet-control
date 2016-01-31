# A hack to get around the fact that pluginsync doesn't work properly when using 'puppet apply'.
# Will recursively sync the plugins folder to the right directory.
class profile::puppet::pluginsync {
  file {"${::settings::libdir}":
    source  => "puppet:///plugins",
    recurse => true,
    purge   => true,
    force   => true,
    owner   => 0,
    group   => 0,
    mode    => '0755',
  }
}
