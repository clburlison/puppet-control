class profile::apps::pip (
    ){

    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    exec { "Install Pip":
        command => "/usr/bin/curl -fsSL https://bootstrap.pypa.io/get-pip.py | /usr/bin/python",
        creates => "/usr/local/bin/pip",
    }
    
    # Uninstall Pip - sudo pip uninstall -y pip
}