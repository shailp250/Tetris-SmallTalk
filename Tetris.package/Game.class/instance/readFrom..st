instance creation
readFrom: aString
	"comment stating purpose of message"

	| aStream collect line inLine arg a b sub  |
	aStream := ReadStream on: aString.
	collect := OrderedCollection new.
	
	[ line := aStream nextLine  ]
		whileNotNil: [ 
			arg := ' ' split: line.
			inLine := arg at: 1.
	
			 (inLine match: 'board' ) ifTrue: [ 
					a := arg at: 2.
					b := arg at: 3.
					self r: a c: b.
					].
			
			(inLine match: 'dice') ifTrue: [ 
				self diceAdd: arg.	 
				 ]	
				
			 ].
	