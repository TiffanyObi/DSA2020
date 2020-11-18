//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

/*Input: [3,2,1,5,6,4] and k = 2
Output: 5
Example 2:

[6, 5, 4, 3, 2, 1]

Input: ([3,2,3,1,2,4,5,5,6]) and k = 4
Output: 4

[6, 5, 5, 4, 3, 2, 2, 1]

Note:
You may assume k is always valid, 1 ≤ k ≤ array's length.
*/

/*

array - sort it . reverse decending. then return the kth element which would be the (k-1)th index
 
[1,2,2,3,3,4,5,5,6]
[6,5,5,4,3,3,2,2,1]
[2,3,4,5,6]
*/


func fourthLargest(_ arr: [Int], _ k:Int) -> Int {
  guard !arr.isEmpty else { return 0 }
  let sorttedArray = arr.sorted{$0 > $1}
  return sorttedArray[k - 1]
}

print(fourthLargest([3,2,3,1,2,4,5,5,6], 4))
print(fourthLargest([3,2,1,5,6,4], 2))
