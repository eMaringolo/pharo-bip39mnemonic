testing
isValid

	| words |
	words := self words.
	(words size \\ 3) isZero ifFalse: [ 
		^false ].
	(words allSatisfy: [:word | (self wordsIn: self language) includes: word ])
		ifFalse: [ ^false ].
	^self hasValidChecksum