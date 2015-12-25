# Remove outdated puppet run reports. If we don't clean 
# these out they out they can take up quite a bit of space.
class profile::puppet::clean_reports {
  # Puppet 3 location
  tidy { "/var/lib/puppet/reports":
    age => "3d",
    recurse => true,
  }
  # Puppet 4 location
  tidy { "/opt/puppetlabs/puppet/cache/reports/":
    age => "3d",
    recurse => true,
  }
}