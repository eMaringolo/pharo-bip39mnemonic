baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				configuration: 'OpenSSL'
				with: [ spec
						className: #BaselineOfOpenSSL;
						repository: 'github://PierceNg/OpenSSL-Pharo/src-st' ].
			spec
				project: 'PBKDF2'
				with: [ spec
						className: #ConfigurationOfPBKDF2;
						repository: 'http://smalltalkhub.com/mc/UdoSchneider/PBKDF2/main' ].
			spec
				package: 'BIP39Mnemonic-Core'
				with: [ spec
						repository: 'github://eMaringolo/pharo-bip39mnemonic/src';
						requires: #('PBKDF2' 'OpenSSL') ] ]