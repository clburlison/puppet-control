# install screensaver profile
class profile::profiles::screensaver (
  $organization = '',
  $profile_identifier = 'k12.bisd.screensaver',
  $ask_for_password = true,
  $ask_for_password_delay = '0',
  $idle_time = '180',
){
  mac_profiles_handler::manage { 'k12.bisd.screensaver':
    ensure      => present,
    file_source => template('profile/profiles/screensaver.erb'),
    type        => 'template'
  }
}