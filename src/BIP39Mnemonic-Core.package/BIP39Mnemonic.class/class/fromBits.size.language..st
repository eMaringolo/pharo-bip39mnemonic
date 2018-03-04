instance creation
fromBits: bits size: wordCount language: language
	"Creates a new instance of receiver built from the bits of anInteger
	using the specified language.
	NOTE: The bits already include the checksum."


	^self new
		setBits: bits size: wordCount;
		language: language;
		yourself