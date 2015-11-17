class profile::repositories::others::backuprestore (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'backuprestore':
        path    =>  "${my_sourcedir}/others/backuprestore",
        source  =>  'rustymyers/BackupRestore',
    }

    file {"$my_sourcedir/others/backuprestore":
        owner   => $my_username,
        recurse => true,
        require => Repository['backuprestore']
    }
    
}
