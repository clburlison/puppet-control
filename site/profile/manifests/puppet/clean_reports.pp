# Remove outdated puppet run reports. If we don't clean 
# these out they out they can take up quite a bit of space.
class profile::puppet::clean_reports {
  tidy { "${::settings::reportdir}":
    age => "3d",
    recurse => true,
  }
}