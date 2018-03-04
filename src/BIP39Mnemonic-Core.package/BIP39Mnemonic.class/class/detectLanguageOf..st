instance creation
detectLanguageOf: aString

	self ensureAllLanguages.
	self words
		keysAndValuesDo: [ :lang :wordlist | 
			(wordlist
				anySatisfy: [ :word | word = aString ])
				ifTrue: [ ^ lang ] ].
	^ self
		error:
			('Cannot detect language of <1s>.'
				expandMacrosWith: aString)