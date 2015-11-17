class profile::config::zsh (
    ){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    osx_chsh { $my_username:
        shell   => '/bin/zsh',
    }

    repository { 'oh-my-zsh':
        source => 'robbyrussell/oh-my-zsh',
        path   => "/Users/${my_username}/.oh-my-zsh",
        # ensure => '4224c2a1af2a1b99c14ef81012af321c39856cf5',
     }

     file {"/Users/${my_username}/.oh-my-zsh":
        owner   => $my_username,
        recurse => true,
        require => Repository['oh-my-zsh'],
    }
}