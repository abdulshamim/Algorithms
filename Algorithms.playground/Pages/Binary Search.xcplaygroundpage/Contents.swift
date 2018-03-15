//: [Previous](@previous)

import Foundation


//MARK :- Raw data
let sortedArray = [2,3,5,9,10,14,23,31,45,46,49,55,60]
let target = 49


func binarySearch(target: Int) -> (Bool, Int?) {
    
    var lowerIndex = 0
    var upperIndex = sortedArray.count - 1
    var targetIndex: Int?
    
    while lowerIndex <= upperIndex {
        let midIndex = (lowerIndex + upperIndex) / 2
        
        print("lower index:\(lowerIndex)   UpperIndex: \(upperIndex)  MidIndex: \(midIndex)")
        
        if target == sortedArray[midIndex] {
           targetIndex = midIndex
           print(targetIndex)
           exit
           return (true, targetIndex)
        }
        
        if target < sortedArray[midIndex] {
            upperIndex = midIndex - 1
        }
        
        if target > sortedArray[midIndex] {
            lowerIndex = midIndex + 1
        }
        
    }
   
    return (false, nil)
}

binarySearch(target: 89)
