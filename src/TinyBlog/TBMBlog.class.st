Class {
	#name : 'TBMBlog',
	#superclass : 'Object',
	#instVars : [
		'posts'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : 'TinyBlog',
	#package : 'TinyBlog'
}

{ #category : 'accessing' }
TBMBlog >> allBlogPosts [

	^ posts
]

{ #category : 'accessing' }
TBMBlog >> allBlogPostsFromCategory: aCategory [
 
	^ posts select: [ :p | p category = aCategory ]
]

{ #category : 'accessing' }
TBMBlog >> allCategories [

	^ (self allBlogPosts collect: [ :p | p category ]) asSet
]

{ #category : 'accessing' }
TBMBlog >> allVisibleBlogPosts [

	^ posts select: [ :p | p isVisible ]
]

{ #category : 'accessing' }
TBMBlog >> allVisibleBlogPostsFromCategory: aCategory [

	^ posts select: [ :p | p category = aCategory
							and: [ p isVisible ] ]
]

{ #category : 'initialization' }
TBMBlog >> intialize [

	super initialize.
	posts := OrderedCollection new
]

{ #category : 'accessing' }
TBMBlog >> removeAllPosts [

	posts := OrderedCollection new
]

{ #category : 'accessing' }
TBMBlog >> size [

	^ posts size
]

{ #category : 'accessing' }
TBMBlog >> writeBlogPost: aPost [
	"Add the blog post to the list of posts."
	posts add: aPost
]
