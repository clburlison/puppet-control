class profile::profiles::remove_profiles (
){
  mac_profiles_handler::manage { 'managedmac.loginwindow.alacarte':
    ensure      => absent,
  }

  mac_profiles_handler::manage { 'managedmac.security.alacarte':
    ensure      => absent,
  }

  mac_profiles_handler::manage { 'com.apple.mdm.011-ctemac2.bisd.k12.2d3da6b0-f6e6-0130-a545-002500eedaae.alacarte':
    ensure      => absent,
  }

  mac_profiles_handler::manage { 'DisableReopenWindows':
    ensure      => absent,
  }

  mac_profiles_handler::manage { 'com.apple.sidebarlists':
    ensure      => absent,
  }

  mac_profiles_handler::manage { 'com.apple.finder':
    ensure      => absent,
  }
}