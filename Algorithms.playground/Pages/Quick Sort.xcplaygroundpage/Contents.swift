//: [Previous](@previous)

import Foundation

var arrayToSort = [11, 10, 2, 9, 6, 3, 7, 15, 23, 1, 4, 8, 12, 5]


func partitionArray(array: [Int], start: Int, end: Int) -> Int {
    let pivot = array[end]
    var partitionIndex = start
    for i in 0..<end{
        if array[i] < pivot {
            arrayToSort.swapAt(i, partitionIndex)
            partitionIndex += 1
        }
    }
   
    arrayToSort.swapAt(partitionIndex, end)
    print(arrayToSort)
    return partitionIndex
}

func quickSort(array: [Int], start: Int, end: Int) {
    if start<end {
        let pIndex = partitionArray(array: arrayToSort, start: 0, end: end)
        quickSort(array: arrayToSort, start: 0, end: pIndex-1)
        quickSort(array: arrayToSort, start: pIndex+1, end: end)
    }
}

quickSort(array: arrayToSort, start: 0, end: arrayToSort.count-1)
