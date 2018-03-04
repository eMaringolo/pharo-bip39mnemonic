testing
hasValidChecksum
	^ self checksum
		=
			(self class
				createChecksumFrom: (self entropy printStringBase: 16 length: (self bitsString size - self checksumSize) / 4 padded: true)
				size: self checksumSize)