# 
class profile::desktoppic::desktop_script {

  $script = 'puppet:///modules/desktoppicture/set_desktops.py'

  if $ensure_desktop == 'present'{
      file {$script_path:
          source => $script,
          owner  => root,
          group  => wheel,
          mode   => '0755',
      }
  }

  if $ensure_desktop == 'absent' {
      file {$script_path:
          ensure => absent,
      }
  }
}
