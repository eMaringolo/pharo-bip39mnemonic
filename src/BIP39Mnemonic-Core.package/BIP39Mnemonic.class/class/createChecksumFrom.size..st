utilities
createChecksumFrom: hexString size: checksumSize
	^ Integer
		readFrom:
			(((SHA256 hashMessage: (ByteArray fromHexString: hexString asLowercase)) asInteger
				printStringBase: 2
				length: 256
				padded: true) copyFrom: 1 to: checksumSize)
		base: 2