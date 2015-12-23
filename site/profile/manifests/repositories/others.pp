class profile::repositories::others (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    class {'profile::repositories::others::BackupRestore': }
    class {'profile::repositories::others::createOSXinstallPkg': }
    class {'profile::repositories::others::dockutil': }
    class {'profile::repositories::others::extractinstalls': }
    class {'profile::repositories::others::first_boot_pkg': }
    class {'profile::repositories::others::graham_mactech_2014': }    
    class {'profile::repositories::others::luggage': }
    class {'profile::repositories::others::make_profile_pkg': }
    class {'profile::repositories::others::margarita': }
    class {'profile::repositories::others::munki_in_a_box': }
    class {'profile::repositories::others::munkiadmin': }
    class {'profile::repositories::others::osx-vm-templates': }
    class {'profile::repositories::others::outset': }
    class {'profile::repositories::others::packer-templates': }
    class {'profile::repositories::others::profiles': }
    class {'profile::repositories::others::puppet_run': }
    class {'profile::repositories::others::recipeGenerationUtils': }
    class {'profile::repositories::others::sal': }
    class {'profile::repositories::others::scripts': }	
	
}
