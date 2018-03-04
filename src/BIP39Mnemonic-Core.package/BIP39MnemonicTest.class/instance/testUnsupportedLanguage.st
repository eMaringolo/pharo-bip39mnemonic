tests
testUnsupportedLanguage

	| m1  |
	m1 := BIP39Mnemonic fromWords: 'letter advice cage absurd amount doctor acoustic avoid letter advice cage absurd amount doctor acoustic avoid letter advice cage absurd amount doctor acoustic bless' language: 'english'.
	self should: [m1 language: 'esperanto'] raise: Error
