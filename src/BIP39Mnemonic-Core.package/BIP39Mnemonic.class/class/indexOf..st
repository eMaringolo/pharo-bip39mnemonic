words
indexOf: word 
	"Returns the zero-based index of a word in the list of words for the default languange."
	
	^self indexOf: word in: self defaultLanguage 