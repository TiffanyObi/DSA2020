//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//func binarySearch(_ arr:[Int], _ target:Int) ->Int{
//
//var low = 0
//var high = arr.count
//
//while low < high {
//  let middleIndex = ((high+low) / 2)
//  let currentValue = arr[middleIndex]
//
//  if currentValue == target {
//    return middleIndex
//  } else if currentValue < target { //go to the right
//    low = middleIndex + 1
//    } else {
//      high = middleIndex
//    }
//  }
//  return -1
//}
//
//
//let binarySearchResult = binarySearch([1,2,3,4,5,6,7,8,9], 7)
//print(binarySearchResult)


//func binarySearch<T:Comparable>(_ arr:[T], _ target:T) ->Int{
//
//    var low = 0
//    var high = arr.count
//
//    while low < high {
//        let middleIndex = ((high+low) / 2)
//        let currentValue = arr[middleIndex]
//
//        if currentValue == target {
//            return middleIndex
//        } else if currentValue < target { //go to the right
//            low = middleIndex + 1
//        } else {
//            high = middleIndex
//        }
//    }
//    return -1
//}
//
//print(binarySearch(["a","b","c","d","e"], "t"))

/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */
//Using BinarySearch to find first bad commit without usng an array inside the function.
//class Solution : VersionControl {
//    func firstBadVersion(_ n: Int) -> Int {
//
//       var left = 1
//        var right = n
//
//        while left < right {
//            var middleInt = ((left + right) / 2)
//            if isBadVersion(middleInt) {
//               right  = middleInt
//            } else {
//               left = (middleInt + 1)
//            }
//        }
//        return left
//    }
//}



