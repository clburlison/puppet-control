class profile::repositories::others::munkiadmin (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'munkiadmin':
        path    =>  "${my_sourcedir}/others/munkiadmin",
        source  =>  'hjuutilainen/munkiadmin',
    }

    file {"$my_sourcedir/others/munkiadmin":
        owner   => $my_username,
        recurse => true,
        require => Repository['munkiadmin']
    }
    
}
