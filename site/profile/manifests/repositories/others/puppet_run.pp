class profile::repositories::others::puppet_run {
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'puppet_run':
        path    =>  "${my_sourcedir}/others/puppet_run",
        source  =>  'grahamgilbert/puppet_run',
    }

    file {"$my_sourcedir/others/puppet_run":
        owner   => $my_username,
        recurse => true,
        require => Repository['puppet_run']
    }

}