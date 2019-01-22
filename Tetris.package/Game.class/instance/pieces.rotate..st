character shapes
pieces:  num rotate: rotate
	"comment stating purpose of message"

	| mid mod|
	 mid := self boardMid .
	
	( num  == 1 ) ifTrue: [   
		board at: 1 at: mid put: 'y'.
		board at: 1 at: mid+1 put: 'y'.
		board at: 2 at: mid put: 'y'.
		board at: 2 at: mid+1 put: 'y'.
		self printBoard .
		].
	
"FOR SHAPE 7"
	(num == 7) ifTrue: [  
		mod := rotate % 4.
				
		(mod == 3) ifTrue: [  
		board at: 2 at: mid-1  put: 'c'.
		board at: 2 at: mid   put: 'c'.
		board at: 2 at: mid+1 put: 'c'.
		board at: 2 at: mid+2  put: 'c'.
		self printBoard. ].
		( mod == 1  ) ifTrue: [
			board at: 1 at: mid-1  put: 'c'.
			board at: 1 at: mid   put: 'c'.
			board at: 1 at: mid+1 put: 'c'.
			board at: 1 at: mid+2  put: 'c'.
			self printBoard . ].
		board at: 1 at: mid  put: 'c'.
		board at: 2 at: mid   put: 'c'.
		board at: 3 at: mid put: 'c'.
		board at: 4 at: mid  put: 'c'.
		self printBoard .
		].
		
		
