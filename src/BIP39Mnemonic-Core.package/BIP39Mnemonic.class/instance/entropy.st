accessing
entropy
	| bitsString |
	bitsString := self bitsString.
	^Integer readFrom: (bitsString copyFrom: 1 to: bitsString size - self checksumSize) base: 2