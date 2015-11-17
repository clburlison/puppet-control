class profile::fonts (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    file {"${my_homedir}/Library/Fonts":
        ensure => 'directory',
        recurse => true,
        source => "/Users/${my_username}/Dropbox/Config/User/Library/Fonts"
    }
}
