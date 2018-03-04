instance creation
fromBits: anInteger
	"Creates a new instance of receiver built from the bits of anInteger
	using the default language.
	NOTE: The bits already include the checksum."

	^ self fromBits: anInteger size: 12 language: self defaultLanguage 