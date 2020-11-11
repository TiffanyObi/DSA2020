//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

/*
 Steps of Lomuto's Partioninong
 1. use the last element as the pivot
 2.Iterate the last element as the pivot
 3. if element at j is less than the pivot the swap
 4. if element at j is greate than the pivot simky increment j
 5. swap i and the high indices
 6. return i (new pivot to divide the array using recurssion)
 */

func lumotoPartioning(_ arr: inout [Int], low:Int, high:Int) -> Int {
    let i = low
    let pivot = arr[high]
    
    for j in low..<high {
        if arr[j] <= pivot {
            arr.swapAt(i,j)
        }
    }
    
   arr.swapAt(i,high)
    return i
}

var inputArr = [2,3,0,-5,1,-10]

print(inputArr)

func quickSort(_ arr: inout [Int], low:Int, high:Int){
    /*
     steps for quick sort using lumoto
     1.Calculate the new pivot
     2.Use this pivot divide the array into a left and right array
     3.right array recursive call will be low, pivot -1
     4.right array recurssive call will be pivot + 1 , high
     */
    
    if low < high {
        let pivot = lumotoPartioning(&arr, low: low, high: high)
        
        quickSort(&arr, low: low, high: pivot - 1)
        
        quickSort(&arr, low: pivot + 1, high: high)
    }
}


quickSort(&inputArr, low: 0, high: inputArr.count - 1)
print(inputArr)
