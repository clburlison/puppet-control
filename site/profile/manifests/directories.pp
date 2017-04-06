class profile::directories (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    require profile::puppet::factsync

    File {
        owner   => "${my_username}",
        group   => 'admin',
    }

    file {"${my_homedir}/src":
        ensure => link,
        target => "/Users/${my_username}/Dropbox/src",
    }

    file {"${my_homedir}/bin":
        ensure => link,
        target => "/Users/${my_username}/Dropbox/Config/User/bin",
    }

#     file {"${my_homedir}/blog":
#         ensure => link,
#         target => "/Users/${my_username}/Dropbox/src/mine/blog",
#     }
#
#     file {"${my_homedir}/.dotfiles":
#         ensure => link,
#         target => "/Users/${my_username}/Dropbox/src/mine/dotfiles",
#     }
#
#     file {"${my_homedir}/mine":
#         ensure => link,
#         target => "/Users/${my_username}/Dropbox/src/mine",
#     }
#
#     file {"${my_homedir}/others":
#         ensure => link,
#         target => "/Users/${my_username}/Dropbox/src/others",
#     }
#
#     file {"${my_homedir}/puppet":
#         ensure => link,
#         target => "/Users/${my_username}/Dropbox/src/puppet",
#     }
#
#     file {"${my_homedir}/work":
#         ensure => link,
#         target => "/Users/${my_username}/Dropbox/src/work",
#     }
}