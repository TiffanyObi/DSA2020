//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // key = num, value = index
    var dict = [Int: Int]()
    for (index, value) in nums.enumerated() {
        let findNum = target - value
        if let otherIndex = dict[findNum] {
            return [otherIndex, index]
        } else {
            dict[value] = index
        }
    }
    return []
}

print(twoSum([2,3,1,4,5,6], 9))
