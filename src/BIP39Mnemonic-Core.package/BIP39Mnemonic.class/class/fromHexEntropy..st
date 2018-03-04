instance creation
fromHexEntropy: hexString
	| checksum checksumSize |
	(hexString size \\ 4) isZero
		ifFalse: [ self error: 'Entropy string has an invalid lenght.' ].
	checksumSize := hexString size * 4 // 32.
	checksum := self createChecksumFrom: hexString size: checksumSize.
	^ self
		fromBits:
			((Integer readFrom: hexString base: 16) bitShift: checksumSize)
				+ checksum
		size: (hexString size * 4 + checksumSize) / 11
		language: self defaultLanguage