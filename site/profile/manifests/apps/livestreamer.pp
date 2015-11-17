class profile::apps::livestreamer (
    ){

    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    exec { "Install Livestreamer":
        command => "/usr/local/bin/pip install -U livestreamer",
        creates => "/usr/local/bin/livestreamer",
        require => Exec['Install Pip'],
    }
}