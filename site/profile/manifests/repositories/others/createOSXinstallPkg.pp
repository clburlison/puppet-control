class profile::repositories::others::createOSXinstallPkg (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'createOSXinstallPkg':
        path    =>  "${my_sourcedir}/others/createOSXinstallPkg",
        source  =>  'https://github.com/munki/createOSXinstallPkg',
    }

    file {"$my_sourcedir/others/createOSXinstallPkg":
        owner   => $my_username,
        recurse => true,
        require => Repository['createOSXinstallPkg']
    }
    
}
