adding
diceAdd: aString
	"comment stating purpose of message"

	| a b c |
	a := 1.
	b := aString size.
	
	[ a < b ]
	whileTrue: [ 
		a := a +1.
		c := aString at: a .
		diceCollection add: c.
		].
