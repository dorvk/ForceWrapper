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
    // or
    print($number.safeValue)
    
    // prints 0
    
    number = 7
    
    print(number!)
    // or
    print($number.safeValue)
    
    // prints 7
    
    @ForceWrapper(default: "null") var text: String?

    text = "apple"
    
    print(text!)
    // or
    print($text.safeValue)
  
    // prints apple
