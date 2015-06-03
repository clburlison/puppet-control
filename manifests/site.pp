hiera_include('classes')
node default {

    $dirs = [ "/var/lib/puppet", "/etc/puppet", "/etc/facter" ]
  
    file { $dirs:
        ensure => directory,
    }
    
    # Turn off filebucket
    File {
        backup => false,
    }
}
