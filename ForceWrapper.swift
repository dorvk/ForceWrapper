//
//  ForceWrapper.swift
//
//  Created by Doruk Çoban on 8/10/21.
//

import Foundation

@propertyWrapper
struct ForceWrapper<T> {
    
    private let defaultValue: T
    
    init(default value: T) {
        self.defaultValue = value
    }
    
    var wrappedValue: T? {
        didSet {
            if self.wrappedValue == nil {
                self.wrappedValue = self.defaultValue
            }
        }
    }
    
    var safeValue: T {
        return wrappedValue!
    }
    
    var projectedValue: ForceWrapper<T> { self }
}
