//: Playground - noun: a place where people can play

import UIKit

var numbers = [1, 2, 3, 8, 9, 11, 21, 4, 13]
let sortedArray = numbers.sorted()

print(sortedArray)
func findElementsWHoseSumisClosetsToZero() {
    var l = 0
    var r = sortedArray.count-1
    var sum = 0
    var minSum = INT_MAX
    var min_l = -1
    var max_r = -1
    
    while l<r {
        sum = sortedArray[l] + sortedArray[r]
        //print(sum)
        if Int(sum) < Int(minSum) {
            minSum = Int32(sum)
            min_l = l
            max_r = r
        }
//        if sum < 0 {
//            l += 1
//        } else if sum > 0 {
            r -= 1
     //   }
      
    }
    print("First Element:  \(sortedArray[min_l]) at index \(min_l)")
    print("Second Element: \(sortedArray[max_r]) at index \(max_r)")
    print(minSum)
}

findElementsWHoseSumisClosetsToZero()
