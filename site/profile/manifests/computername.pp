# This class will verify that the computer name and asset tag are set properly.
# The csv file has data based off the serial number.
class profile::computername (
  $checkscript = "/usr/local/name_mac/installcheck_script.py",
  $postscript = "/usr/local/name_mac/postinstall_script.py",
){  
  if ! defined(File['/usr/local']) {
    file { '/usr/local':
      ensure => directory,
    }
  }

  if ! defined(File['/usr/local/name_mac']) {
    file { '/usr/local/name_mac':
      ensure => directory,
    }
  }

  file {"/usr/local/name_mac/names.csv":
    ensure => present,
    source  => 'puppet:///modules/profile/name_mac/names.csv',
    owner   => root,
    group   => wheel,
    mode    => '0600',
  }

  file {"$checkscript":
    ensure => present,
    source  => 'puppet:///modules/profile/name_mac/installcheck_script.py',
    owner   => root,
    group   => wheel,
    mode    => '0744',
  }

  file {"$postscript":
    ensure => present,
    source  => 'puppet:///modules/profile/name_mac/postinstall_script.py',
    owner   => root,
    group   => wheel,
    mode    => '0744',
  }

  exec { "set_compname":
      command => "$postscript",
      onlyif  => "$checkscript",
      require => [ File["/usr/local/name_mac/names.csv"],
                   File["$checkscript"],
                   File["$postscript"],
                  ],
  }
}
