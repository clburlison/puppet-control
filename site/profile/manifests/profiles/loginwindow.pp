# install loginwindow profile
class profile::profiles::loginwindow (
  $organization = '',
  $profile_identifier = 'k12.bisd.loginwindow',
  $hide_admin_users = true,
  $hide_local_users = true,
  $hide_mobile_accounts = true,
  $admin_host_info = 'HostName',
  $disable_console_access = true,
  $retries_until_hint = '3',
  $showfullname = true,
  $use_computer_name_for_computer_record_name = true,
  $disable_auto_login_client = true,
  $enable_fast_user_switching = false,
  $auto_log_out_delay = '0',
  $loginwindow_text = "Property of Birdville ISD, please contact Clayton Burlison if found. \n clayton.burlison@birdvilleschools.net or 682-225-7222. \n Computer name: $::hostname"
){
  mac_profiles_handler::manage { 'k12.bisd.loginwindow':
    ensure      => present,
    file_source => template('profile/profiles/loginwindow.erb'),
    type        => 'template'
  }
}