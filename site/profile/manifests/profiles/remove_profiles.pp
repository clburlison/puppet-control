class profile::profiles::remove_profiles (
){
  outset::boot_every{'remove_profiles.sh':
      script => 'puppet:///modules/profile/profiles/remove_profiles.sh'
  }
}