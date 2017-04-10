class profile::users (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username

    user { 'clburlison':
      ensure     => 'present',
      comment    => 'Clayon Burlison',
      gid        => '80',
      groups     => ['admin'],
      home       => '/Users/clburlison',
      iterations => hiera('profile::users::clburlison::iterations', ''),
      password   => hiera('profile::users::clburlison::password', ''),
      salt       => hiera('profile::users::clburlison::salt', ''),
      shell      => '/usr/local/bin/fish',
      uid        => '530',
    }
}
