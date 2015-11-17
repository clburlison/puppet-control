class profile::repositories::others::graham_mactech_2014 (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'graham_mactech_2014':
        path    =>  "${my_sourcedir}/others/graham_mactech_2014",
        source  =>  'grahamgilbert/mactech_2014',
    }

    file {"$my_sourcedir/others/graham_mactech_2014":
        owner   => $my_username,
        recurse => true,
        require => Repository['graham_mactech_2014']
    }
    
}
