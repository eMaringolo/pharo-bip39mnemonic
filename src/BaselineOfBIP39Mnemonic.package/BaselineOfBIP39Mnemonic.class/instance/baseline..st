baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'NeoJSON'
				with: [ spec
						repository: 'http://mc.stfx.eu/Neo';
						className: #ConfigurationOfNeoJSON;
						loads: 'Core' ].
			spec
				project: 'OpenSSL'
				with: [ spec
						repository: 'github://eMaringolo/OpenSSL-Pharo/src-st';
						className: #BaselineOfOpenSSL

					"Temporarly until Pull request is merged in upstream repo at https://github.com/PierceNG/OpenSSL-Pharo" ].
			spec
				project: 'PBKDF2'
				with: [ spec
						repository: 'http://smalltalkhub.com/mc/UdoSchneider/PBKDF2/main';
						className: #ConfigurationOfPBKDF2 ].
			spec
				package: 'BIP39Mnemonic-Core'
				with: [ spec
						repository: 'github://eMaringolo/pharo-bip39mnemonic/src';
						requires: #('NeoJSON' 'PBKDF2' 'OpenSSL') ] ]