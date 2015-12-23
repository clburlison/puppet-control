# A hack to get around the fact that pluginsync doesn't work properly
# when using 'puppet apply'
# Will recursively sync the fact.d folder to the right directory.
class profile::puppet::factsync (
  $factdir2 = "/etc/facter/facts.d",
  $factdir3 = "/opt/puppetlabs/facter/facts.d/",
) {
  # file {"$factdir2":
  #   source  => "/private/etc/puppet/environments/production/modules/profile/facts.d",
  #   recurse => true,
  #   purge   => true,
  #   force   => true,
  # }
  
  file {"$factpath2":
    source  => "/private/etc/puppetlabs/code/environments/production/site/profile/facts.d",
    recurse => true,
    purge   => true,
    force   => true,
  }  
}
