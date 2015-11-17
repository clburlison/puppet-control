class profile::git (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    git::config::global{ 'credential.helper':
        value => 'osxkeychain',
    }
	
    git::config::global{ 'user.name':
      value => 'Clayton Burlison',
    }

    git::config::global{ 'user.email':
      value => 'clburlison@gmail.com',
    }
  
    git::config::global{ 'push.default':
      value => 'simple',
    }
	
}
