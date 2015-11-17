class profile::repositories::others::margarita (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'margarita':
        path    =>  "${my_sourcedir}/others/margarita",
        source  =>  'jessepeterson/margarita',
    }

    file {"$my_sourcedir/others/margarita":
        owner   => $my_username,
        recurse => true,
        require => Repository['margarita']
    }
    
}
