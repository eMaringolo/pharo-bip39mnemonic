words
wordsIn: language
	(self supportedLanguages includes: language)
		ifFalse: [ self error: ('Language <1p> not supported' expandMacrosWith: language) ].
	^ self words at: language ifAbsentPut: [ self fetchWordsFor: language ]