//: Playground - noun: a place where people can play

import UIKit

let numbers = [1, 2, 4, 5, 6, 7, 8]

func findMissingNumber(n: Int) -> Int? {
    var total = n*(n+1)/2
    for num in numbers {
        total -= num
    }
    if total == 0 {
        return nil
    }
    return total
}

print(findMissingNumber(n: numbers.count+1) ?? "No missing number")
