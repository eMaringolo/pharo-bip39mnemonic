private
mnemonicIndexesFor: mnemonic in: language
	^ mnemonic substrings
		collect: [ :each | ((self wordsIn: language) indexOf: each) - 1 ]