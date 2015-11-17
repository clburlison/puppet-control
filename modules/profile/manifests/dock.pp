class profile::dock (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    outset::login_every{'Dock.sh':
        script => 'puppet:///modules/profile/dock/dock.sh',
        ensure => present,
        priority => 1
    }

    file{'/usr/local/bin/dockutil':
        owner  => root,
        group  => wheel,
        mode   => '0755',
        source => 'puppet:///modules/profile/dock/dockutil'
    }
}
