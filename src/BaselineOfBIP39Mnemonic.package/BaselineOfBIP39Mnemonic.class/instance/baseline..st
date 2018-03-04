baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec 
				project: 'NeoJSON'
				with: [ 
					spec 
						repository: 'http://mc.stfx.eu/Neo';
						className: #ConfigurationOfNeoJSON;
						loads: 'Core'
					 ].
			spec
				project: 'OpenSSL'
				with: [ spec
						className: #BaselineOfOpenSSL;
						repository: 'github://eMaringolo/OpenSSL-Pharo/src-st' 
"Temporarly until Pull request is merged in upstream repo at https://github.com/PierceNG/OpenSSL-Pharo"].
			spec
				project: 'PBKDF2'
				with: [ spec
						className: #ConfigurationOfPBKDF2;
						repository: 'http://smalltalkhub.com/mc/UdoSchneider/PBKDF2/main' ].
			spec
				package: 'BIP39Mnemonic-Core'
				with: [ spec
						repository: 'github://eMaringolo/pharo-bip39mnemonic/src';
						requires: #('NeoJSON' 'PBKDF2' 'OpenSSL') ] ]