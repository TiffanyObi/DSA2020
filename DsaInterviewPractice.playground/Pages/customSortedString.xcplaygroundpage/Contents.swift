//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func customSortString(_ S: String, _ T: String) -> String {
    var tCopy = T.sorted()
    var customString = ""

    for char in S {
        if T.contains(char){
            customString.append(char)
            if let index = tCopy.firstIndex(of: char) {
            tCopy.remove(at: index)
        }
    }
}
    customString += tCopy
    
    return customString
}

//CORRECT ANSWER !
/*
func customSortString(_ S: String, _ T: String) -> String {
    var dict = [Character: Int]()
    var otherDict = [Int: Character]()
    for (index, char) in S.enumerated() {
        dict[char] = index
        otherDict[index] = char
    }
    
    var charArr = [Character]()
    var orders = [Int](repeating: 0, count: 26)
    for char in T {
        if let order = dict[char] {
            orders[order] += 1
        } else {
            charArr.append(char)
        }
    }
    for (index, num) in orders.enumerated() {
        var count = num
        
        while count != 0 {
            charArr.append(otherDict[index]!)
            count -= 1
        }
    }
    
    return String(charArr)
}
*/
print(customSortString("abdc", "adcebc")) // result should be abcde
print(customSortString("cdy", "jclyhd")) // result should be cdyjlh
print(customSortString("gpqitv", "dbpwmdivubgstnkq")) // result should be gpqitvdbwmdubsnk
