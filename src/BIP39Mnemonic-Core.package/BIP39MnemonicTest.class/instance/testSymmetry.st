tests
testSymmetry

	| m1 m2 |
	m1 := BIP39Mnemonic fromWords: 'letter advice cage absurd amount doctor acoustic avoid letter advice cage absurd amount doctor acoustic avoid letter advice cage absurd amount doctor acoustic bless' language: 'english'.
	m2 := 	BIP39Mnemonic fromBits: m1 bits size: m1 size language: m1 language.
	self assert: m1 words equals: m2 words.
