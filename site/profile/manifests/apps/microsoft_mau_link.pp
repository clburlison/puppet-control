class profile::apps::microsoft_mau_link (
){
    File {
        owner   => "root",
        group   => 'admin',
    }

    file {"/Applications/Utilities/Microsoft AutoUpdate.app":
        ensure => link,
        target => "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app",
    }
}