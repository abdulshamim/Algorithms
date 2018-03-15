//: [Previous](@previous)

/// Sort the array by Isertion sort
///
/// - Parameters:
///   - arr: array which is to be sort
///   - isOrder: order in which to be sort the array
func insertionSort(_ arr: [Int]) {
    var newArray = arr
    for i in 1..<newArray.count {
        var y = i
        let temp = newArray[y]
        while y > 0 && temp <  newArray[y-1] {
            newArray[y] = newArray[y-1]
            y -= 1
        }
        newArray[y] = temp
    }
    print(newArray)
}

var array = [2,1,9,6,3,7,15,23,4,8,12, 12, 5]
insertionSort(array)

