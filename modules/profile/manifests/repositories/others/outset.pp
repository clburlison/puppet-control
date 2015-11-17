class profile::repositories::others::outset (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'outset':
        path    =>  "${my_sourcedir}/others/outset",
        source  =>  'chilcote/outset',
    }

    file {"$my_sourcedir/others/outset":
        owner   => $my_username,
        recurse => true,
        require => Repository['outset']
    }
    
}
