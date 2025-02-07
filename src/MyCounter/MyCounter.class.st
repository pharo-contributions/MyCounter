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

{ #category : 'initialization' }
MyCounter class >> withValue: anInteger [ 

	^ self new
		count: anInteger;
		yourself
]

{ #category : 'accessing' }
MyCounter >> count [
	^ count
]

{ #category : 'accessing' }
MyCounter >> count: anInteger [ 
	count := anInteger
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
