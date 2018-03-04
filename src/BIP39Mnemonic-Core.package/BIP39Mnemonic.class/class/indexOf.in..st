words
indexOf: word in: language 
	"Returns the zero-based index of a word in the list of words for languange."
	
	^((self wordsIn: language) indexOf: word) - 1