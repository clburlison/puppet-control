class profile (
    # $my_username  = $::boxen_user,
    # $my_homedir   = "/Users/${::boxen_user}",
    # $my_sourcedir = "/Users/${::boxen_user}/src",
    $my_username  = "clburlison",
    $my_homedir   = "/Users/clburlison",
    $my_sourcedir = "/Users/clburlison/src",
    ){

    # include managedmac
    include outset
    # include desktoppicture
    # include profile::puppet::clean_reports
    # include profile::puppet::cleanup_old_puppet
    # include profile::puppet::factsync
    # include profile::puppet::pluginsync
    #
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
    include profile::users
    # # include profile::vagrant
}
