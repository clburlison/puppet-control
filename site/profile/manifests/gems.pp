class profile::gems {
	
	package { 'bundler':
		provider => 'gem',
		ensure   => 'latest',
	}

	package { 'CFPropertyList':
		provider => 'gem',
		ensure   => 'latest',
	}
	
	package { 'puppet-lint':
		provider => 'gem',
		ensure   => 'latest',
	}

	package { 'librarian-puppet':
		provider => 'gem',
		ensure   => 'latest',
	}
	
	package { 'rspec-puppet':
		provider => 'gem',
		ensure   => 'latest',
	}

	package { 'puppetlabs_spec_helper':
		provider => 'gem',
		ensure   => 'latest',
	}
  
	package { 'hiera-eyaml':
		provider => 'gem',
		ensure   => 'latest',
	}
	
}