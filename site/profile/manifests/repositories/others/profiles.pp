class profile::repositories::others::profiles (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    file {"$my_sourcedir/others/profiles":
        owner   => $my_username,
    }
	
	repository { 'gregneagle/profiles':
        path    =>  "${my_sourcedir}/others/profiles/gregneagle",
        source  =>  'gregneagle/profiles',
        # ensure   => 'origin/HEAD',
    }

    file {"$my_sourcedir/others/profiles/gregneagle":
        owner   => $my_username,
        recurse => true,
        require => Repository['gregneagle/profiles']
    }
	
    repository { 'nmcspadden/Profiles':
        path    =>  "${my_sourcedir}/others/profiles/nmcspadden",
        source  =>  'nmcspadden/Profiles',
        # ensure   => 'origin/HEAD',
    }

    file {"$my_sourcedir/others/profiles/nmcspadden":
        owner   => $my_username,
        recurse => true,
        require => Repository['nmcspadden/Profiles']
    }
	
    repository { 'golbiga/Profiles':
        path    =>  "${my_sourcedir}/others/profiles/golbiga",
        source  =>  'golbiga/Profiles',
        # ensure   => 'origin/HEAD',
    }

    file {"$my_sourcedir/others/profiles/golbiga":
        owner   => $my_username,
        recurse => true,
        require => Repository['golbiga/Profiles']
    }
    
    repository { 'rtrouton/profiles':
        path    =>  "${my_sourcedir}/others/profiles/rtrouton",
        source  =>  'rtrouton/profiles',
        # ensure   => 'origin/HEAD',
    }

    file {"$my_sourcedir/others/profiles/rtrouton":
        owner   => $my_username,
        recurse => true,
        require => Repository['rtrouton/profiles']
    }
    
    repository { 'amsysuk/public_config_profiles':
        path    =>  "${my_sourcedir}/others/profiles/amsysuk",
        source  =>  'amsysuk/public_config_profiles',
        # ensure   => 'origin/HEAD',
    }

    file {"$my_sourcedir/others/profiles/amsysuk":
        owner   => $my_username,
        recurse => true,
        require => Repository['amsysuk/public_config_profiles']
    }
    
}
