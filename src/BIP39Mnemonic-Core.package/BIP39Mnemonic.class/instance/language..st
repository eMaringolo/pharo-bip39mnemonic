accessing
language: aString
	(self class supportedLanguages includes: aString)
		ifFalse: [ self
				error: ('<1p> language is not supported.' expandMacrosWith: aString) ].
	language := aString