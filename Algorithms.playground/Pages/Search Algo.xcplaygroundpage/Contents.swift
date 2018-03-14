//: [Previous](@previous)

import Foundation

//MARK :- Raw data
let sortedArray = [2,3,5,9,10,14,23,31,45,46,49,55,60]
let target = 49



//MARK :- Linear Search
func linearSearchTarget() {
    for (index, item) in sortedArray.enumerated() {
        if target == item {
            print("Item \(item) found at index \(index)")
        }
    }
}

linearSearchTarget()


//MARK :- Binary Search
var lowerBound = 0
var upperBounds = sortedArray.count
var targetIndex: Int?

func binarySeachtTarget() {
    
    for item in sortedArray {
        //midIndex =
        var midIndex = (lowerBound + (upperBounds - lowerBound)/2)
        
        if upperBounds < lowerBound {
            exit
        }
        
        if sortedArray[midIndex] == target {
            targetIndex = midIndex
            exit
        } else  if sortedArray[midIndex] < target {
            lowerBound = midIndex + 1
        } else if sortedArray[midIndex] > target {
            upperBounds = midIndex - 1
        }
    }
    defer {
       
    }
}


binarySeachtTarget()
print(targetIndex)








