# Required gems that osx nodes must have to work with out masterless setup
class osx_gems (
  $options = [ '--install-dir', '/opt/puppetlabs/puppet/lib/ruby/gems/2.1.0', '--bindir', '/opt/puppetlabs/puppet/bin' ]
){
  package { 'r10k':
    ensure          => '2.1.1',
    provider        => 'puppet_gem',
    source          => 'https://production.cf.rubygems.org',
    install_options => $options,
  }

  package { 'hiera-eyaml':
    ensure          => '2.0.8',
    provider        => 'puppet_gem',
    source          => 'https://production.cf.rubygems.org',
    install_options => $options,
  }
  
  package { 'sqlite3':
    ensure          => '1.3.11',
    provider        => 'puppet_gem',
    source          => 'https://production.cf.rubygems.org',
    install_options => $options,
  }
  
  package { 'CFPropertyList':
    ensure          => '2.3.2',
    provider        => 'puppet_gem',
    source          => 'https://production.cf.rubygems.org',
    install_options => $options,
  }
}

# Class to allow ordering of gems followed by hiera classes.
# This feels hacky but works as a solution
class include {
  hiera_include('classes')
}

# Define default node
node default {
  if $::osfamily == 'Darwin' {
      Class {'osx_gems':} ->
      Class {'include':}
  }
}