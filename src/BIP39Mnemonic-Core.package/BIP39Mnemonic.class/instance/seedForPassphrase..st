accessing
seedForPassphrase: passphrase

	"PBKDF2(mnemonic, u'mnemonic' + passphrase, iterations=PBKDF2_ROUNDS, macmodule=hmac, digestmodule=hashlib.sha512).read(64)"

	^(PBKDF2 new
		hashFunction: LcEvpSHA512;
		password: self wordsString;
		salt:  'mnemonic', passphrase;
		iterations: 2048;
		length: 64;
		deriveKey) hex asLowercase.
	
	