class profile::apps::microsoft_mau_link (
){

  # Enable insider builds from the Internal Channel
  mac_admin::osx_defaults { 'Enable MAU Internal Builds':
      ensure => present,
      domain => 'com.microsoft.autoupdate2',
      key    => 'ChannelName',
      value  => 'Internal',
  }

  File {
      owner   => "root",
      group   => 'admin',
  }

  file {"/Applications/Utilities/Microsoft AutoUpdate.app":
      ensure => link,
      target => "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app",
  }
}