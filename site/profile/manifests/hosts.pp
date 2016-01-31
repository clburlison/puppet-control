class profile::hosts (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    require profile::puppet::factsync

    file {'/private/etc/hosts':
        ensure => present,
        source => "/Users/${my_username}/Dropbox/Config/System/etc/hosts",
        owner  => root,
        group  => wheel,
        mode   => '644',
    }
}
