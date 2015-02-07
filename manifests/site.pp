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

    include profile
    hiera_include('classes')
}
