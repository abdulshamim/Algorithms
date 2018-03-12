//: [Previous](@previous)

import Foundation

var myArray = [9,0,8,3,6,2,1.5,1,0,2.5]

//MARK :- Without Generics
func bubleSort() {
    for i in 0..<myArray.count-1 {
        for j in 0..<myArray.count - i - 1 {
            if myArray[j] > myArray[j+1] {
                myArray.swapAt(j, j+1)
            }
        }
       
    }
   // print(myArray)
}

bubleSort()


var myArray2 = [9,0,8,3,6,2,1.5,1,0,2.5]

extension Array where Element: Comparable {
    
    func bubleSort(by increasingWay: ((Element, Element) -> Bool) = (<)) -> [Element] {
        var data = self
        
        for i in 0..<data.count-1 {
            for j in 0..<data.count-i-1 where increasingWay(data[j+1], data[j]) {
                 data.swapAt(j, j+1)
            }
        }
        
        return data
    }
}

print(myArray2)
print(myArray2.bubleSort(by: <))
print(myArray2.bubleSort(by: >))
