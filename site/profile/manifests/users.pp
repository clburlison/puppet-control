class profile::users (
){
    $my_homedir   = $profile::my_homedir
    $my_sourcedir = $profile::my_sourcedir
    $my_username  = $profile::my_username
    
    user { 'clburlison':
      ensure     => 'present',
      comment    => 'Clayon Burlison',
      gid        => '80',
      groups     => ['_appserveradm', '_appserverusr', '_lpadmin', 'access_bpf', 'admin', 'com.apple.access_ssh', 'com.apple.sharepoint.group.3'],
      home       => '/Users/clburlison',
      iterations => hiera('clburlisonuser::iterations'),
      password   => hiera('clburlisonuser::password'),
      salt       => hiera('clburlisonuser::salt'),
      shell      => '/bin/zsh',
      uid        => '530',
    }
}
