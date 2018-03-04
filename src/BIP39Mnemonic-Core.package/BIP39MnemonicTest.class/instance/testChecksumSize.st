tests
testChecksumSize

	| m |
	m := BIP39Mnemonic fromWords: 'legal winner thank year wave sausage worth useful legal winner thank yellow'.
	self assert: m checksumSize = 4.

	m := BIP39Mnemonic fromWords: 'void come effort suffer camp survey warrior heavy shoot primary clutch crush open amazing screen patrol group space point ten exist slush involve unfold'.
	self assert: m checksumSize = 8

	
	
	