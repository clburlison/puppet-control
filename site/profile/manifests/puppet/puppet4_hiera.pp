# Make sure /etc/puppetlabs/code/hiera.yaml is always the most up to date version.
class profile::puppet::puppet4_hiera {
  file { "${::settings::hiera_config}":
    source  => "${::settings::environmentpath}/${::environment}/hieradata/hiera.yaml",
  }
}
