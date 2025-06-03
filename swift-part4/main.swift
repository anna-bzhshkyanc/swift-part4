//
//  main.swift
//  swift-part4
//
//  Created by Anna Bzhshkyan on 03.06.25.
//

import Foundation

//task 1
class Stack<T> {
    
    private var elements: [T] = []
    
    func push(_ element: T) {
        elements.append(element)
    }
    
    func pop() -> T? {
        return elements.popLast()
    }
    
    func size() -> Int {
        return elements.count
    }
    
    func printStackContents() -> String {
        var result = ""
        for ( index, value ) in elements.enumerated() {
            result += String(describing: (index, value)) + "\n"
        }
        return result
    }
}

