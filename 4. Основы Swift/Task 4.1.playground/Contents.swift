import UIKit
import Foundation

var myArray: [Int] = [5,4,-2,0,2]
print("Array before sorting: \(myArray)")
var sortedArray = myArray.sorted()
print("Array after sorting: \(sortedArray)")

sortedArray.swapAt(0, 3)
print("Array after swaping: \(sortedArray)")


print("Another way to sort array")
var myArray2: [Int] = [5,4,-2,0,2]
print("Array before sorting: \(myArray2)")

// Another approach
public func bubbleSort<inputType : Comparable>(_ inputArray: inout [inputType]) {
for endofArray in (1..<inputArray.count).reversed() {
var swapped = false
for currentIndex in 0..<endofArray {
if inputArray[currentIndex] > inputArray[currentIndex + 1] {
inputArray.swapAt(currentIndex, currentIndex+1)
swapped = true
    }
}
if !swapped {
return
}
}
}

bubbleSort(&myArray2)
print("Array before sorting: \(myArray2)")



