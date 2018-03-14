//: [Previous](@previous)

import Foundation

//MARK : Factorial with Recursive call
func factorial(_ number: Int) -> Int {
    if number == 0 {
        return 1
    }
    return number * factorial(number-1)
}

factorial(4)

//MARK : Factorial with for loop
func factorialOfNumber(_ number: Int) -> Int {
    
    if number == 0 {
        return 1
    }
    
    var result = 1
    for i in 1...number {
        print(i)
        result *= i
    }
    
    return result
}


factorialOfNumber(4)
