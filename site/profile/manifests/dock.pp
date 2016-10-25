class profile::dock (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    include profile::tools

    outset::login_every{'dock.py':
        script => 'puppet:///modules/profile/dock/dock.py',
        ensure => present,
        priority => 1
    }

    outset::login_every{'Dock.sh':
        script => 'puppet:///modules/profile/dock/dock.sh',
        ensure => absent,
        priority => 1
    }

    file{'/usr/local/bin/dockutil':
        owner  => root,
        group  => wheel,
        mode   => '0755',
        source => 'puppet:///modules/profile/dock/dockutil'
    }
}
