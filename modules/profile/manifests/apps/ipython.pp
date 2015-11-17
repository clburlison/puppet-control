class profile::apps::ipython (
    ){

    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    exec { "Install ipython":
        command => "/usr/local/bin/pip install -U ipython",
        creates => "/usr/local/bin/ipython",
        require => Exec['Install Pip'],
    }
}