# Install bits for Puppet Terminus
# https://docs.puppetlabs.com/puppetdb/latest/connect_puppet_apply.html#on-platforms-without-packages
# WIP - Work In Progress
class profile::puppet::terminus {
  $puppetdir = "$rubysitedir/puppet"

  file { $puppetdir:
    ensure => directory,
    recurse => remote, # Copy these files without deleting the existing files
    source => "puppet:///modules/puppetdb/puppet",
    owner => root,
    group => root,
    mode => 0644,
  }
}
