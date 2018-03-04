instance creation
generate
	"Answer a new instance of receiver with the default bit length.
	WARNING: The entropy generation of this class is weak, so please avoid using it for critical purposes, randomness has not been tested."

	^ self generate: 128 language: 'english'