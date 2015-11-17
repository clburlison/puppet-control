class profile::profiles (
    ){

    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username
    
    File {
        owner => $my_username,
        group => 'staff'
    }
    
    # ensure profiles are either absent or present
    # the name needs to be the exact same as the PayloadIdentifier (case senitive)
    config_profile { 'BISD-GeekTool':
      ensure    => present,
      path      => '/private/etc/puppet/environments/production/modules/profile/files/profiles/BISD-GeekTool.mobileconfig',
      # path      => 'puppet:///modules/profile/profiles/BISD-GeekTool.mobileconfig',
      system    => true,
    }
    
    config_profile { 'Geektool-login-item':
      ensure    => present,
      path      => '/private/etc/puppet/environments/production/modules/profile/files/profiles/Geektool-login-item.mobileconfig',
      # path      => 'puppet:///modules/profile/profiles/Geektool-login-item.mobileconfig',
      system    => true,
    }
}