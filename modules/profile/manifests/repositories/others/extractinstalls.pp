class profile::repositories::others::extractinstalls (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'extractinstalls':
        path    =>  "${my_sourcedir}/others/extractinstalls",
        source  =>  'MagerValp/extractinstalls',
    }

    file {"$my_sourcedir/others/extractinstalls":
        owner   => $my_username,
        recurse => true,
        require => Repository['extractinstalls']
    }
    
}
