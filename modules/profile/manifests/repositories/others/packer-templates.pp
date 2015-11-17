class profile::repositories::others::packer-templates (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'packer-templates':
        path    =>  "${my_sourcedir}/others/packer-templates",
        source  =>  'shiguredo/packer-templates',
    }

    file {"$my_sourcedir/others/packer-templates":
        owner   => $my_username,
        recurse => true,
        require => Repository['packer-templates']
    }
    
}
