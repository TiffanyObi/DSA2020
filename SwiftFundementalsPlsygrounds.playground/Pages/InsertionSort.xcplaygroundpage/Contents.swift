//: [Previous](@previous)

import Foundation

var str = "Hello, playground"


func insertionSort(_ arr: inout [Int]){
    for current in 1..<arr.count {
        for j in (1...current).reversed() {
            if arr[j] < arr[j - 1] {
                arr.swapAt(j,j - 1)
            } else {
                break
            }
        }
    }
}

var inputArray = [10,4,77,8,433,5,7,8,90,2,4,5678,0,8,6543]
insertionSort(&inputArray)

print(inputArray)
