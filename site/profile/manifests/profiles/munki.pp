# Apply munki settings via profile
class profile::profiles::munki (
  $softwarerepourl = 'http://munki01.bisd.k12/munki_repo',
  $clientidentifier = '',
  $suppressautoinstall = false,
  $suppressusernotification = false,
  $install_apple_updates = true,
  $unattended_apple_updates = true,
  $apple_software_updates_only = false,
  $suppress_stop = false,
  $packageurl = '',
  $catalogurl = '',
  $manifesturl = '',
  $helpurl = 'http://helpdesk.birdvilleschools.net',
  $additionalhttpheaders = '',
  $organization = 'Birdville ISD',
  $profile_identifier = 'k12.bisd.munki',
){
  # Include munki conditionals from Graham 
  include mac_admin::munki::conditions

  # Install the profile
  mac_profiles_handler::manage { 'k12.bisd.munki':
    ensure      => present,
    file_source => template('profile/profiles/munki.erb'),
    type        => 'template'
  }
}