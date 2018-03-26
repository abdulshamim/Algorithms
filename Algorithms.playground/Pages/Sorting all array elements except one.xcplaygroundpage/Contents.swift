//: [Previous](@previous)

import Foundation
import UIKit

var input = [10, 4, 11, 7, 6, 20]

//let output = [4, 6, 11, 7, 10, 20]

let targetIndex = 2
var newArray = [Int]()

func storeInNewArray() {
    
    let targetedValue = input[targetIndex]
    
    for (index, element) in input.enumerated() {
        if targetIndex != index {
           newArray.append(element)
           print("Index \(index)   Value: \(element)")
        }
    }
    
    for i in 0..<input.count-1 {
      
        for j in 0..<input.count-index-1{
            if input[j+1] < input[j]{
                input.swapAt(j+1, j)
               // swapNumber(first: &newArray[j+1], second: &newArray[j])
            }
        }
    }
    
    input.insert(targetedValue, at: targetIndex)
    print(input)
}


func swapNumber(first: inout Int, second: inout Int) {
    let temp = first
    first = second
    second = temp
}

storeInNewArray()
