Class {
	#name : 'MyCounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
MyCounterTest >> testDecrement [ 

	| counter |
	counter := MyCounter new.
	counter 
		increment;
		increment;
		decrement.
	self assert: counter count equals: 1
]

{ #category : 'tests' }
MyCounterTest >> testIncrement [ 

	| counter |
	counter := MyCounter new.
	counter increment.
	self assert: counter count equals: 1.
]

{ #category : 'tests' }
MyCounterTest >> testInitialization [

	| counter |
	counter := MyCounter new.
	self assert: counter count equals: 0
]
