tests
testInvalidChecksum
	| m |
	m := BIP39Mnemonic fromWords: 'bless cloud wheel regular tiny venue bird web grief security dignity zoo'.
	self deny: m isValid
	