//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// MERGE SORT
// 2 parts

//divide and conquer
//mergeSort using recurssion

// 2 parts to a recurssive function
//1.base case
//2.the revussive call

func mergeSort(_ arr: [Int]) -> [Int]{
    // 3 - base case for recursin call
    guard arr.count > 1 else { return arr}
    
    //1 - middle Index
    
    let middleIndex = (arr.count / 2)
    
    
    //2 - divide and conquer - runtime is O(log n)
    //this range is from the beginning of the unsorted array to right before the middle Index
    let leftArray = mergeSort(Array(arr[..<middleIndex]))
    
    //this range is from the the middle index of the unsorted array to the end of the array
    let righArray = mergeSort(Array(arr[middleIndex...]))
    
    return merge(leftArr: leftArray, rightArr: righArray)
}

func merge(leftArr:[Int], rightArr:[Int]) -> [Int]{
    var results = [Int]()
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < leftArr.count && rightIndex < rightArr.count {
        let leftElement = leftArr[leftIndex]
        let rightElement = rightArr[rightIndex]
        
        if leftElement < rightElement {
            results.append(leftElement)
            leftIndex += 1
         } else if rightElement < leftElement {
            results.append(rightElement)
            rightIndex += 1
            } else { // this means they are the same
            results.append(leftElement)
            leftIndex += 1
            results.append(rightElement)
            rightIndex += 1
                }
            }
    // remaining elements if any
    if leftIndex < leftArr.count {
        results.append(contentsOf: leftArr[leftIndex...])
    }
    
    if rightIndex < rightArr.count {
        results.append(contentsOf: rightArr[rightIndex...])
    }
    return results
}

print(mergeSort([-3,5,0,8,5,4,1]))
print(mergeSort([]))
