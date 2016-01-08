# Make sure /etc/puppetlabs/code/hiera.yaml is always
# the most up to date version.
class profile::puppet::puppet4_hiera {
  file { "${::codedir}/hiera.yaml":
    source  => "${::codedir}/${::environment}/hieradata/hiera.yaml",
  }
}
