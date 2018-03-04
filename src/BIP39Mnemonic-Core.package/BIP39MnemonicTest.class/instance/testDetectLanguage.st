tests
testDetectLanguage
	self
		assert: (BIP39Mnemonic detectLanguageOf: 'when')
		equals: 'english'.
	self
		assert: (BIP39Mnemonic detectLanguageOf: 'correr')
		equals: 'spanish'.
	self
		should: [ BIP39Mnemonic
				detectLanguageOf: 'saltinbanqui' ]
		raise: Error