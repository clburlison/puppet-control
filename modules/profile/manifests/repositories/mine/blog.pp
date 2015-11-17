class profile::repositories::mine::blog (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'blog':
        path    =>  "${my_sourcedir}/mine/blog",
        source  =>  'clburlison/clburlison.github.io',
    }

    file {"$my_sourcedir/mine/blog":
        owner   => $my_username,
        recurse => true,
        require => Repository['blog']
    }
    
}
