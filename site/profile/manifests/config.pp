class profile::config (
    ){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username
    
    File {
      owner => $my_username,
      group => 'staff'
    }

    Mac_admin::Osx_defaults {
      user => $my_username,
    }

    class { 'profile::config::autopkg': }
    class { 'profile::config::system': }
    class { 'profile::config::textmate': }
    # class { 'profile::config::zsh': }
}
