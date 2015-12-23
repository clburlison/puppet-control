class profile::repositories::others::dockutil (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'dockutil':
        path    =>  "${my_sourcedir}/others/dockutil",
        source  =>  'kcrawford/dockutil',
    }

    file {"$my_sourcedir/others/dockutil":
        owner   => $my_username,
        recurse => true,
        require => Repository['dockutil']
    }
    
}
