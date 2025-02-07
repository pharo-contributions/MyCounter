Class {
	#name : 'BaselineOfMyCounter',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfMyCounter',
	#package : 'BaselineOfMyCounter'
}

{ #category : 'baselines' }
BaselineOfMyCounter >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		"Packages"
		spec package: 'MyCounter'.

		"Groups"
		spec group: 'default' with: #( 'core' ).
		spec group: 'core' with: #( 'MyCounter' ) ]
]
