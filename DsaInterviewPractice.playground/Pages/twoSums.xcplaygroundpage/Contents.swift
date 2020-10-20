//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    let nums2 = Set(nums)
    
    for (index,i) in nums.enumerated() {
        let remainder = (target - i)
        if nums2.contains(remainder) {
            let index2 = nums.lastIndex(of: remainder) as! Int
            if index != index2 {
               return [index,index2]
            }
              
        }
    }
    
    return []
}

print(twoSum([1,2,3,4,5,6], 9))
