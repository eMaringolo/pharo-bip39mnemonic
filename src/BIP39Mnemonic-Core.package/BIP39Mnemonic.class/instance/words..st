accessing
words: wordsCount
	| bitsString |
	bitsString := self bits printStringBase: 2 length: wordsCount * 11 padded: true.
	^ (1 to: bitsString size by: 11)
		collect:
			[ :index | self wordAt: (Integer readFrom: (bitsString copyFrom: index to: index + 10) base: 2) ]