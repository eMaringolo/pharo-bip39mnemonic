words
wordAt: index in: language
	"Returns the word in language.
	NOTE: index is expected to be zero based, so we increment it by one."

	^(self wordsIn: language) at: index + 1