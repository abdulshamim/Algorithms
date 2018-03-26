//: [Previous](@previous)

import Foundation
import UIKit

let input = [10, 4, 11, 7, 6, 20]

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
    
    for i in 0..<newArray.count-1 {
        for j in 0..<newArray.count-i-1{
            if newArray[j+1] < newArray[j]{
                newArray.swapAt(j+1, j)
               // swapNumber(first: &newArray[j+1], second: &newArray[j])
            }
        }
    }
    
    for i in targetIndex..<newArray.count{
        print(newArray[i])
      //  print(i)
        //newArray =
    }
    
    newArray.insert(targetedValue, at: targetIndex)
   
//    print(targetIndex)
//    print(targetedValue)
    print(newArray)
}


func swapNumber(first: inout Int, second: inout Int) {
    let temp = first
    first = second
    second = temp
}

storeInNewArray()
