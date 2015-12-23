class profile::repositories::others::scripts (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    file {"$my_sourcedir/others/scripts":
        owner   => $my_username,
    }
	
	# Ginja
	repository { 'Ginja/Admin_Scripts':
        path    =>  "${my_sourcedir}/others/scripts/gregneagle",
        # ensure   => 'origin/HEAD',
        source  =>  'Ginja/Admin_Scripts',
    }

    file {"$my_sourcedir/others/scripts/ginja":
        owner   => $my_username,
        recurse => true,
        require => Repository['Ginja/Admin_Scripts']
    }
	
	# Graham 
    repository { 'grahamgilbert/macscripts':
        path    =>  "${my_sourcedir}/others/scripts/grahamgilbert",
        # ensure   => 'origin/HEAD',
        source  =>  'grahamgilbert/macscripts',
    }

    file {"$my_sourcedir/others/scripts/grahamgilbert":
        owner   => $my_username,
        recurse => true,
        require => Repository['grahamgilbert/macscripts']
    }
	
	# hjuutilainen
    repository { 'hjuutilainen/adminscripts':
        path    =>  "${my_sourcedir}/others/scripts/hjuutilainen",
        # ensure   => 'origin/HEAD',
        source  =>  'hjuutilainen/adminscripts',
    }

    file {"$my_sourcedir/others/scripts/hjuutilainen":
        owner   => $my_username,
        recurse => true,
        require => Repository['hjuutilainen/adminscripts']
    }

	# MacMiniVault
    repository { 'MacMiniVault/Mac-Scripts':
        path    =>  "${my_sourcedir}/others/scripts/MacMiniVault",
        # ensure   => 'origin/HEAD',
        source  =>  'MacMiniVault/Mac-Scripts',
    }

    file {"$my_sourcedir/others/scripts/MacMiniVault":
        owner   => $my_username,
        recurse => true,
        require => Repository['MacMiniVault/Mac-Scripts']
    }
	
	# natewalck
    repository { 'natewalck/Scripts':
        path    =>  "${my_sourcedir}/others/scripts/natewalck",
        # ensure   => 'origin/HEAD',
        source  =>  'natewalck/Scripts',
    }

    file {"$my_sourcedir/others/scripts/natewalck":
        owner   => $my_username,
        recurse => true,
        require => Repository['natewalck/Scripts']
    }
	
	# rtrouton
    repository { 'rtrouton/rtrouton_scripts':
        path    =>  "${my_sourcedir}/others/scripts/rtrouton",
        # ensure   => 'origin/HEAD',
        source  =>  'rtrouton/rtrouton_scripts',
    }

    file {"$my_sourcedir/others/scripts/rtrouton":
        owner   => $my_username,
        recurse => true,
        require => Repository['rtrouton/rtrouton_scripts']
    }
    
	# tkimpton
    repository { 'tkimpton/Scripts':
        path    =>  "${my_sourcedir}/others/scripts/tkimpton",
        # ensure   => 'origin/HEAD',
        source  =>  'tkimpton/Scripts',
    }

    file {"$my_sourcedir/others/scripts/tkimpton":
        owner   => $my_username,
        recurse => true,
        require => Repository['tkimpton/Scripts']
    }
    
	# futureimperfect
    repository { 'futureimperfect/futureimperfect_scripts':
        path    =>  "${my_sourcedir}/others/scripts/futureimperfect",
        # ensure   => 'origin/HEAD',
        source  =>  'futureimperfect/futureimperfect_scripts',
    }

    file {"$my_sourcedir/others/scripts/futureimperfect":
        owner   => $my_username,
        recurse => true,
        require => Repository['futureimperfect/futureimperfect_scripts']
    }

	  # 74bit / Owen Pragel
    repository { '74bit/74bit_scripts':
        path    =>  "${my_sourcedir}/others/scripts/74bit",
        # ensure   => 'origin/HEAD',
        source  =>  '74bit/74bit_scripts',
    }

    file {"$my_sourcedir/others/scripts/74bit":
        owner   => $my_username,
        recurse => true,
        require => Repository['74bit/74bit_scripts']
    }
    
    # jacobsalmela
    repository { 'jacobsalmela/family-tech-support':
        path    =>  "${my_sourcedir}/others/scripts/jacobsalmla",
        # ensure   => 'origin/HEAD',
        source  =>  'jacobsalmela/family-tech-support',
    }

    file {"$my_sourcedir/others/scripts/jacobsalmla":
        owner   => $my_username,
        recurse => true,
        require => Repository['jacobsalmela/family-tech-support']
    }
    
    # groob / whitby / Victor
    repository { 'whitby/mac-scripts':
        path    =>  "${my_sourcedir}/others/scripts/groob",
        # ensure   => 'origin/HEAD',
        source  =>  'whitby/mac-scripts',
    }

    file {"$my_sourcedir/others/scripts/groob":
        owner   => $my_username,
        recurse => true,
        require => Repository['whitby/mac-scripts']
    }
}
