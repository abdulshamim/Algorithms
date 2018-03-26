//: [Previous](@previous)

import Foundation

//Comparable
//  This is an another protocol provided by iOS, which provide us the functionality to use <, <=, >=, and > operators on the custom class objects, it is similar to equatable protocol i.e. we need to conform it and implement it’s methods, one more important thing about comparable protocol is that is it inherited from equatable so it must override “==” operator as well, so we need to override “==” and “<” operators.



struct Student: Comparable {
    let rollNumber: Int?
    let name: String?
    
    init(rollNumber:Int,name:String) {
        self.rollNumber = rollNumber
        self.name = name
    }
    

    static func <(lhs: Student, rhs: Student) -> Bool {
        if lhs.rollNumber! < rhs.rollNumber! {
            return true
        } else {
            return false
        }
    }
    static func ==(lhs: Student, rhs: Student) -> Bool {
        if lhs.rollNumber == rhs.rollNumber {
            return true
        } else {
            return false
        }
    }
}

let obj1 =  Student(rollNumber:1, name:"Abdul")
let obj2 =  Student(rollNumber:1, name:"Khan")

if obj1 == obj2 {
    print("Same student")
} else {
    print("Different student")
}


//One more interesting fact about comparable protocol, if we create an array of Student which is using comparable protocol, we can use sort function on that array directly without mentioning anything.


let abdul = Student(rollNumber: 1, name: "Abdul")
let shamim = Student(rollNumber: 2, name: "Shamim")
let khan = Student(rollNumber: 3, name: "khan")


let students = [khan, abdul, shamim]

print(students.sorted())

let result = students.sorted(by: { $0 > $1 })
print(result)

