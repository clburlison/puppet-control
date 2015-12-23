class profile::repositories::others::sal (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'sal-plugins':
        path    =>  "${my_sourcedir}/others/sal-plugins",
        source  =>  'salsoftware/sal-plugins',
    }

    file {"$my_sourcedir/others/sal-plugins":
        owner   => $my_username,
        recurse => true,
        require => Repository['sal-plugins']
    }
	
    repository { 'sal':
        path    =>  "${my_sourcedir}/others/sal",
        source  =>  'salsoftware/sal',
    }

    file {"$my_sourcedir/others/sal":
        owner   => $my_username,
        recurse => true,
        require => Repository['sal']
    }
    
}
