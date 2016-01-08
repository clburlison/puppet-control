class profile (
  $my_username  = ${::console_user},
  $my_homedir   = "/Users/${::console_user}",
  $my_sourcedir = "/Users/${::console_user}/src",
  ) {

  # include managedmac
  include outset
  include desktoppicture
  # include profile::puppet::clean_reports
  include profile::puppet::cleanup_old_puppet
  include profile::puppet::factsync
  # include profile::puppet::pluginsync
  include profile::puppet::remove_puppet4_daemons

  # include profile::apps
  # include profile::computername
  # include profile::config
  # include profile::directories
  # include profile::dock
  # include profile::fonts
  # # include profile::gems
  # include profile::git
  # include profile::hosts
  # include profile::profiles
  # # include profile::repositories
  # include profile::ssh_keys
  # include profile::users
  # # include profile::vagrant
}
