class profile (
  $my_username  = "${::console_user}",
  $my_homedir   = "/Users/${::console_user}",
  $my_sourcedir = "/Users/${::console_user}/src",
  ) {

  include outset
  include desktoppicture
  include managedmac::sshd
  include managedmac::ntp
  include managedmac::energysaver
  include managedmac::groups
  include macauthdb
  include profile::puppet::clean_reports
  include profile::puppet::cleanup_old_puppet
  include profile::puppet::factsync
  include profile::puppet::osx_gems
  include profile::puppet::pluginsync
  include profile::puppet::puppet4_hiera
  include profile::puppet::remove_puppet4_daemons

  include profile::apps
  include profile::ard
  include profile::computername
  include profile::config
  include profile::dock
  # include profile::gems
  include profile::git
  include profile::profiles::loginwindow
  include profile::profiles::munki
  include profile::profiles::profiles
  include profile::profiles::remove_profiles
  include profile::profiles::screensaver
  include profile::users
  # include profile::vagrant
  
  # These configs require dropbox for data
  if ($dropbox_presence == 'True') {
    include profile::directories
    include profile::fonts
    include profile::hosts
    # include profile::repositories
    include profile::ssh_keys
  }
}
