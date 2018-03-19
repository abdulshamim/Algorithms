//: [Previous](@previous)

import Foundation


var array = [2, 1, 9, 6, 3, 7, 15, 23, 4, 8, 12, 12, 5]

func selectionSort(_ array: [Int]) {
   
    var resultArray = array
    for i in 0..<resultArray.count-1{
        var smallest = i
        for j in i+1..<resultArray.count{
            if resultArray[j] < resultArray[smallest] {
                smallest = j
            }
        }
        resultArray.swapAt(i, smallest)
    }
    
     print(resultArray)
}


selectionSort(array)
