words
fetchWordsFor: language
	^ (ZnEasy get:
		(self wordsUrlTemplate expandMacrosWith: language)) contents
		substrings