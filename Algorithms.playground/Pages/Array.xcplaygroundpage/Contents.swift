//: [Previous](@previous)

import Foundation

let myArray = [9,0,8,3,6,2,1,1,0,2]

//MARK :- Bubble Sort
extension Array where Element: Comparable {
    func bubbleSort(by areInIncreasingOrder: ((Element, Element) -> Bool) = (<)) -> [Element] {
        var data = self
        for i in 0..<(data.count - 1){
            for j in 0..<(data.count - i - 1) where areInIncreasingOrder(data[j + 1], data[j]) {
                    data.swapAt(j, j + 1)
            }
        }
        return data
    }
    
    func swap<T: Comparable>(left: inout T, right: inout T) {
        let temp = right
        right = left
        left = temp
    }
}



print(myArray.bubbleSort())
print(myArray.bubbleSort(by: >))

