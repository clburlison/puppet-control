class profile::apps (
    ){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    # include profile::apps::ipython
    # include profile::apps::livestreamer
    include profile::apps::pip
}
