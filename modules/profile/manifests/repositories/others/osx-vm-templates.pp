class profile::repositories::others::osx-vm-templates (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'osx-vm-templates':
        path    =>  "${my_sourcedir}/others/osx-vm-templates",
        source  =>  'timsutton/osx-vm-templates',
    }

    file {"$my_sourcedir/others/osx-vm-templates":
        owner   => $my_username,
        recurse => true,
        require => Repository['osx-vm-templates']
    }
    
}
