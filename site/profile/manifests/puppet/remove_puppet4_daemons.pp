# This class removes removes Puppet 4 LaunchDaemons.
# Since we run /usr/local/bin/puppet_run.py with our own
# daemon we don't want Puppet's built in daemons running.
class profile::puppet::remove_puppet4_daemons {
  file { "/Library/LaunchDaemons/com.puppetlabs.mcollective.plist":
    ensure => absent,
    force  => true,
  }

  file { "/Library/LaunchDaemons/com.puppetlabs.puppet.plist":
    ensure => absent,
    force  => true,
  }

  file { "/Library/LaunchDaemons/com.puppetlabs.pxp-agent.plist":
    ensure => absent,
    force  => true,
  }
}
