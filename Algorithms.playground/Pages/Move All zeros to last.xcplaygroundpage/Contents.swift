//: [Previous](@previous)

import UIKit

var element = [5,0, 7, 0, 0, 2, 3, 0, 8, 0]

func moveZerosTolast(){
    for i in 0..<element.count {
        if element[i] == 0 {
            if let nzIndex = findNonZeros(index: i) {
                element.swapAt(i, nzIndex)
            }
        }
    }
}

func findNonZeros(index: Int) -> Int? {
    for i in index..<element.count {
        if element[i] != 0 {
            return i
        }
    }
    return nil
}

moveZerosTolast()
print(element)

