class profile::repositories (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    class {'profile::repositories::mine': }
    class {'profile::repositories::others': }
    class {'profile::repositories::work': }
}