node default {

    file {'/var/lib/puppet':
        ensure => directory,
    }

    file {'/etc/puppet':
        ensure => directory,
    }

    # Turn off filebucket
    File {
        backup => false,
    }

    include clburlisonconfig
    hiera_include('classes')
}
