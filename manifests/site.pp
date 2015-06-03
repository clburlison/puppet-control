hiera_include('classes')
node default {

    $dirs = [ "/var/lib/puppet", "/etc/puppet", "/etc/facter",
              "/etc/facter/facts.d" ]
  
    file { $dirs:
        ensure => directory,
    }
    
    # Turn off filebucket
    File {
        backup => false,
    }
}
