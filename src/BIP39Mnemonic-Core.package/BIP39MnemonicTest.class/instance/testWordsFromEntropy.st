tests
testWordsFromEntropy
	self vectors
		do: [ :v | 
			| mnemonic |
			mnemonic := BIP39Mnemonic fromHexEntropy: v first.
			self assert: mnemonic isValid.
			self assert: mnemonic words equals: v second substrings.
			self
				assert: (mnemonic seedForPassphrase: self vectorsPassphrase)
				equals: v third ]