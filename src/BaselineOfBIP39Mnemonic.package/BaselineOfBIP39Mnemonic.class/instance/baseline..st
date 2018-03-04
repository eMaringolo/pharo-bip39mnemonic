baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'PBKDF2'
				with: [ spec
						repository: 'http://smalltalkhub.com/mc/UdoSchneider/PBKDF2/main' ].
			spec
				project: 'OpenSSL'
				with: [ spec
						repository: 'github://PierceNg/OpenSSL-Pharo/src-st' ].
			spec
				package: 'BIP39Mnemonic-Core'
				with: [ spec requires: #('PBKDF2' 'OpenSSL') ] ]