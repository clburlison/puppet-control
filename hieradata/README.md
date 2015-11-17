hieradata
=========

Hiera Data


#Encryption
Some of these strings are encrypted with [hiera-eyaml](https://github.com/TomPoulton/hiera-eyaml). For client machines or a puppetmaster to decrypt the values the proper private/public keys need to be installed on the client machine at:


	/private/etc/puppet/keys/private_key.pkcs7.pem
	/private/etc/puppet/keys/public_key.pkcs7.pem


To encrypt:

	$ eyaml encrypt -f filename            # Encrypt a file
	$ eyaml encrypt -s 'hello there'       # Encrypt a string
	$ eyaml encrypt -p                     # Encrypt a password (prompt for it)	

To decrypt:

	$ eyaml decrypt -f filename               # Decrypt a file
	$ eyaml decrypt -s 'ENC[PKCS7,.....]'     # Decrypt a string


More information can be found at the project home [hiera-eyaml](https://github.com/TomPoulton/hiera-eyaml).