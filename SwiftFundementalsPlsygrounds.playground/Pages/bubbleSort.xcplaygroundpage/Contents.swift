//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
/*
 
 */

func bubbleSort(_ arr: inout [Int]) {
    
    for i in 0..<arr.count {
        for j in 1..<arr.count - i {
            if  arr[j] < arr[j - 1] {
            arr.swapAt(j,j - 1)
        }
    }
}
}

var array = [1,4,78,0,3,7,2]

bubbleSort(&array)
print(array)
