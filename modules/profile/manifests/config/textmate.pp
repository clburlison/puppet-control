class profile::config::textmate (
    ){

    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    # TextMate
    
    mac_admin::osx_defaults { 'TextMate File Browser Placement':
        ensure => present,
        domain => 'com.macromates.TextMate.preview',
        key    => 'fileBrowserPlacement',
        value  => 'left',
    }

}