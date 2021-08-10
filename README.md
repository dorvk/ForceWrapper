# ForceWrapper

ForceWrapper is a property wrapper tool that you can safely force wrap your optional properties

How to use
------------

Copy the file `ForceWrapper.swift` into your project.

Create your properties with `@ForceWrapper(default: )`

Examples
------------

    @ForceWrapper(default: 0) var number: Int?
    
    number = nil
    
    print(number!)
    print($number.safeValue)
    
    // prints 0
    
    @ForceWrapper(default: "null") var text: String?

    text = "NotNull"
    print(text!)
    print($text.safeValue)
  
    // prints NotNull
