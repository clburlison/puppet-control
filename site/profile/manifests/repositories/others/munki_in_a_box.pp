class profile::repositories::others::munki_in_a_box (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'munki_in_a_box':
        path    =>  "${my_sourcedir}/others/munki_in_a_box",
        source  =>  'tbridge/munki-in-a-box',
    }

    file {"$my_sourcedir/others/munki_in_a_box":
        owner   => $my_username,
        recurse => true,
        require => Repository['munki_in_a_box']
    }
    
}
