class profile::repositories::others::luggage (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'luggage':
        path    =>  "${my_sourcedir}/others/luggage",
        source  =>  'unixorn/luggage',
    }

    file {"$my_sourcedir/others/luggage":
        owner   => $my_username,
        recurse => true,
        require => Repository['luggage']
    }
    
    exec {'Install the luggage':
        command => '/usr/bin/make bootstrap_files',
        cwd     => "${my_sourcedir}/others/luggage",
        creates => '/usr/local/share/luggage/luggage.make',
        require => Repository['luggage']
    }
    
}
