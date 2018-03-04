accessing
vectors
	^ vectors isNil
		ifTrue: [ vectors := self createVectors ]