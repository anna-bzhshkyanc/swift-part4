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


//task 2
protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}

class Circle: Shape {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return radius * radius * Double.pi
    }
    
    func perimeter() -> Double {
        return 2 * Double.pi * radius
    }
    
}

class Rectangle: Shape {
    let width: Double
    let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func area() -> Double {
        return width * height
    }
    
    func perimeter() -> Double {
        return 2*(width + height)
    }
}

func generateShape() -> some Shape {
    return Circle(radius: 5.0)
}

func calculateShapeDetails(shape: any Shape) -> (area: Double, perimeter: Double) {
    return (area: shape.area(), perimeter: shape.perimeter())
}




