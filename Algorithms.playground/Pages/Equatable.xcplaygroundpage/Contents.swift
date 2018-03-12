//: [Previous](@previous)

import UIKit
//functionality to check the equality between two instances of a class, with the help of equatable protocol we can use “==” and “!=” operators.The class which is needed to be compared should conform this protocol.Below is the example for it.

struct Student: Equatable {
    let rollNumber: Int?
    let name: String?
    
    init(rollNumber:Int,name:String) {
        self.rollNumber = rollNumber
        self.name = name
    }
    
    static func ==(lhs: Student, rhs: Student) -> Bool {
        if lhs.rollNumber == rhs.rollNumber {
            return true
        }
        return false
    }
}

let obj1 =  Student(rollNumber:1, name:"Abdul")
let obj2 =  Student(rollNumber:1, name:"Khan")

if obj1 == obj2 {
    print("Same student")
} else {
    print("Different student")
}

