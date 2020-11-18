//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
/*
 
 */
//runtime is O(n^2)

func bubbleSort(_ arr: inout [Int]) {
    
    for _ in 0..<arr.count {
        for j in 1..<arr.count {
            if  arr[j] < arr[j - 1] {
            arr.swapAt(j,j - 1)
        }
    }
}
}

var array = [9,1,4,78,0,3,7,2]

bubbleSort(&array)
print(array)

