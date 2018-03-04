instance creation
fromHexEntropy: hexString
	| checksum checksumSize |
	(hexString size \\ 4) isZero
		ifFalse: [ self error: 'Entropy string has an invalid lenght.' ].
	checksumSize := hexString size * 4 // 32.
	checksum := Integer
		readFrom:
			(((SHA256 new hashMessage: (ByteArray fromHexString: hexString)) asInteger
				printStringBase: 2
				length: 256
				padded: true) copyFrom: 1 to: checksumSize)
		base: 2.
	^ self
		fromBits: ((Integer readFrom: hexString base: 16) bitShift: checksumSize) + checksum
		size: hexString size * 4 + checksumSize / 11
		language: self defaultLanguage