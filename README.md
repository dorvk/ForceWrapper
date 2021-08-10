# ForceWrapper

ForceWrapper is a property wrapper tool that you can safely force wrap your optional properties

How to use
------------

Copy the file `ForceWrapper.swift` into your project.

Create instance from anywhere you want to use. You don't need to `import CoreData` anywhere, nor AppDelegate configurations. Just do not forget to implement NSManagedObject while initialization.

    @ForceWrapper(default: 0) var number: Int?
    
    number = nil
    
    print(number!)
    print($number.safeValue)
    
// prints 0

    number = 7
    print($number.safeValue)
    prints($number.safeValue)
  
// prints 7
