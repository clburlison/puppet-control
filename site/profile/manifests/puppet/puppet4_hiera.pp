# Make sure /etc/puppetlabs/code/hiera.yaml is always
# the most up to date version.
class profile::puppet::puppet4_hiera {
  file { "/etc/puppetlabs/code/hiera.yaml":
    source  => "/etc/puppetlabs/code/environments/production/hieradata/hiera.yaml",
  }
}
