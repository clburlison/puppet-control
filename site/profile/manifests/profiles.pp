class profile::profiles {
  
  mac_profiles_handler::manage { 'k12.bisd.keychainaccess':
    ensure      => present,
    file_source => 'puppet:///modules/profile/profiles/disable_keychain_pwd_sync.mobileconfig',
  }

  mac_profiles_handler::manage { 'BISD-GeekTool':
    ensure      => present,
    file_source => 'puppet:///modules/profile/profiles/BISD-GeekTool.mobileconfig',
  }

  if $geektool_test == 'true' {
    mac_profiles_handler::manage { 'Geektool-login-item':
      ensure      => present,
      file_source => 'puppet:///modules/profile/profiles/Geektool-login-item.mobileconfig',
    }
  }
}