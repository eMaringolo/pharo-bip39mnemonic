instance creation
fromWords: aCollectionOrString language: language
	| codeString  wordCollection |
	wordCollection := (aCollectionOrString isString
				ifTrue: [ aCollectionOrString substrings ]
				ifFalse: [ aCollectionOrString ]).
	codeString := String
		streamContents: [ :s | 
			wordCollection
				do: [ :word | 
					s
						nextPutAll:
							((self indexOf: word in: language)
								printStringBase: 2
								length: 11
								padded: true) ] ].
	^ self
		fromBits: (Integer readFrom: codeString base: 2)
		size: wordCollection size
		language: language