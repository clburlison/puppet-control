class profile::config::autopkg (
    ){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    mac_admin::osx_defaults { 'AutoPkg Munki Repo':
        user   => $my_username,
        domain => 'com.github.autopkg',
        key    => 'MUNKI_REPO',
        value  => '/Volumes/munki_repo',
    }

    # file {"$my_homedir/Dropbox/Config/bin/autopkg-repos.sh":
    #     owner  => $my_username,
    #     group  => 'staff',
    #     mode   => '0755',
    #     source => 'puppet:///modules/profile/autopkg/autopkg-repos.sh',
    # }
    #
    # exec { 'AutoPkg recipes':
    #     user => $my_username,
    #     command => "$my_homedir/Dropbox/Config/bin/autopkg-repos.sh",
    #     creates => "$my_homedir/Library/AutoPkg/RecipeRepos",
    # }
}