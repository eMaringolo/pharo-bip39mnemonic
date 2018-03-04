instance creation
generate: entropyLength language: language
	"Answer a new instance of receiver with the default bit length.
	WARNING: The entropy generation of this class is weak, so please avoid using it for critical purposes, randomness has not been tested."

	^ self
		fromBits: (SharedRandom globalGenerator nextInt: (2 raisedTo: entropyLength))
		size: (entropyLength + (entropyLength // 32)) // 11
		language: language