"
## My comment

Little class to learn how to do TDD

"
Class {
	#name : 'MyCounter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
MyCounter >> count [
	^ count
]

{ #category : 'initialization' }
MyCounter >> decrement [

	count := count - 1
]

{ #category : 'initialization' }
MyCounter >> increment [

	count := count + 1
]

{ #category : 'initialization' }
MyCounter >> initialize [

	super initialize.
	count := 0
]
