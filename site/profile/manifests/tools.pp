# Management tools/scripts I want placed on my mac
class profile::utils::tools {
  file { '/Library/tools/':
     path => '/Library/tools/',
     source => 'puppet:///modules/profile/tools',
     recurse => true,
     owner   => 'root',
     group   => 'wheel',
     mode    => '0755',
  }
}
