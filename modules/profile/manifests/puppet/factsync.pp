# A hack to get around the fact that pluginsync doesn't work properly
# when using 'puppet apply'
# Will recursively sync the fact.d folder to the right directory.
class profile::puppet::factsync (
  $factdir = "/etc/facter/facts.d",
) {
  file {"$factdir":
    source  => "/private/etc/puppet/environments/production/modules/profile/facts.d",
    recurse => true,
    purge   => true,
    force   => true,
  }
}
