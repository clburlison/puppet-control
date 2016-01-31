#
class profile::desktoppic::wallpaper {

  $outset_path = '/usr/local/outset/login-'
  $remove_once_script = 'puppet:///modules/desktoppicture/remove_once.sh'

  if $ensure_wallpaper == 'present'{
      file {"${outset_path}${freq}/${priority}-${wallpaper_name}.sh":
          owner   => root,
          group   => wheel,
          mode    => '0755',
          content => template('desktoppicture/wallpaper.erb')
      }
  }

  if $ensure_wallpaper == 'absent' {
      file {"${outset_path}${freq}/${priority}-${wallpaper_name}.sh":
          ensure => absent,
       }
  }
}
