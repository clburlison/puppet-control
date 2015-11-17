class profile::repositories::others::make_profile_pkg (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'make_profile_pkg':
        path    =>  "${my_sourcedir}/others/make-profile-pkg",
        source  =>  'timsutton/make-profile-pkg',
    }

    file {"$my_sourcedir/others/make-profile-pkg":
        owner   => $my_username,
        recurse => true,
        require => Repository['make_profile_pkg']
    }
    
}
