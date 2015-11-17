class profile::repositories::others::recipeGenerationUtils (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    repository { 'recipeGenerationUtils':
        path    =>  "${my_sourcedir}/others/recipeGenerationUtils",
        source  =>  'arubdesu/recipeGenerationUtils',
    }

    file {"$my_sourcedir/others/recipeGenerationUtils":
        owner   => $my_username,
        recurse => true,
        require => Repository['recipeGenerationUtils']
    }
    
}
