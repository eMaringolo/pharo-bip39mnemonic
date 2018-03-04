accessing
checksum
	| bitsString |
	bitsString := self bitsString.
	^Integer readFrom: (bitsString copyFrom: bitsString size - self checksumSize + 1 to: bitsString size) base: 2