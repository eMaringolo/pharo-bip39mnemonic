assertions
assertWordCount: count
	((12 to: 24 by: 3) includes: count)
		ifFalse: [ self
				error:
					('Number of words must be one of the following: [12, 15, 18, 21, 24], but it is not (<1p>).'
						expandMacrosWith: count) ]