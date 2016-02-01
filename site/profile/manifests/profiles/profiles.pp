class profile::profiles::profiles {

  mac_profiles_handler::manage { 'BISD-GeekTool':
    ensure      => present,
    file_source => 'puppet:///modules/profile/profiles/BISD-GeekTool.mobileconfig',
  }

  # 802.1x wireless config profile.
  if $mac_laptop == mac_laptop {
    mac_profiles_handler::manage { 'BISD-Secure_System':
      ensure      => present,
      file_source => 'puppet:///modules/profile/profiles/BISD-Secure_System.mobileconfig',
    }
  }

  mac_profiles_handler::manage { 'DontSaveToiCloud':
    ensure      => present,
    file_source => 'puppet:///modules/profile/profiles/DontSaveToiCloud.mobileconfig',
  }

  if $geektool_test == 'true' {
    mac_profiles_handler::manage { 'Geektool-login-item':
      ensure      => present,
      file_source => 'puppet:///modules/profile/profiles/Geektool-login-item.mobileconfig',
    }
  }

  mac_profiles_handler::manage { 'k12.bisd.DisableReopenWindows':
    ensure      => present,
    file_source => 'puppet:///modules/profile/profiles/k12.bisd.DisableReopenWindows.mobileconfig',
  }

  mac_profiles_handler::manage { 'k12.bisd.keychainaccess':
    ensure      => present,
    file_source => 'puppet:///modules/profile/profiles/k12.bisd.keychainaccess.mobileconfig',
  }

  mac_profiles_handler::manage { 'k12.bisd.TimeMachine':
    ensure      => present,
    file_source => 'puppet:///modules/profile/profiles/k12.bisd.TimeMachine.mobileconfig',
  }

  # 802.1x wireless config profile.
  if $mac_laptop == mac_laptop {
    mac_profiles_handler::manage { 'k12.bisd.wireless.BISD-Secure':
      ensure      => present,
      file_source => 'puppet:///modules/profile/profiles/k12.bisd.wireless.BISD-Secure.mobileconfig',
    }
  }
}