class profile::ssh_keys (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    file { "/Users/${my_username}/.ssh":
       ensure  => 'link',
       target  => "/Users/${my_username}/Dropbox/Config/User/ssh_keys/",
 	     owner   => "${my_username}",
 	     mode    => 600,
       recurse => true,
    }
}
