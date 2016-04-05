class profile::git (
){
    
    # This doesn't work currently; another test
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
      value => 'gmail@clburlison.com',
    }

    git::config::global{ 'commit.gpgsign':
      value => 'true',
    }

    git::config::global{ 'user.signingkey':
      value => 'ED91CD4E',
    }

    git::config::global{ 'push.default':
      value => 'simple',
    }	
}
