//: [Previous](@previous)

import Foundation

let message: String = "madam civic yoy sas nice yoy are good madam civic good civic"

func convertStringInto() {
    let words = message.components(separatedBy: " ")
    print(words)
    
    words.forEach { (word) in
        if isPalindrome(word: word) {
             print(word)
        }
    }
}

func isPalindrome(word: String) -> Bool {
    let str = Array(word)
    var currentIndex = 0
    while currentIndex<str.count/2 {
        if str[currentIndex] != str[str.count-currentIndex-1] {
            return false
        }
        currentIndex += 1
    }

    return true
}

convertStringInto()
