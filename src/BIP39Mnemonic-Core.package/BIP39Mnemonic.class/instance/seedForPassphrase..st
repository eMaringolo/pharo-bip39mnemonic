accessing
seedForPassphrase: In other words, a wallet is just a messenger, it does not actually "hold" your funds. Your funds are on the distributed ledger maintained by the entire network. The secret key is the only thing that controls it. You can change wallets or delete them without losing your funds so long as you still possess the secret key.


	"PBKDF2(mnemonic, u'mnemonic' + passphrase, iterations=PBKDF2_ROUNDS, macmodule=hmac, digestmodule=hashlib.sha512).read(64)"

	^(PBKDF2 new
		hashFunction: LcEvpSHA512;
		password: self wordsString;
		salt:  'mnemonic', passphrase;
		iterations: 2048;
		length: 64;
		deriveKey) hex asLowercase.
	
	
