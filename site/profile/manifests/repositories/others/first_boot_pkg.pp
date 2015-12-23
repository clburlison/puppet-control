class profile::repositories::others::first_boot_pkg (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'first_boot_pkg':
        path    =>  "${my_sourcedir}/others/first_boot_pkg",
        source  =>  'grahamgilbert/first-boot-pkg',
    }

    file {"$my_sourcedir/others/first_boot_pkg":
        owner   => $my_username,
        recurse => true,
        require => Repository['first_boot_pkg']
    }
    
}
