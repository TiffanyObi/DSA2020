////: [Previous](@previous)
//
//import Foundation
//
//var str = "Hello, playground"
//
////func customSortString(_ S: String, _ T: String) -> String {
////    var tCopy = T.sorted()
////    var customString = ""
////
////    for char in S {
////        if T.contains(char){
////            customString.append(char)
////            if let index = tCopy.firstIndex(of: char) {
////            tCopy.remove(at: index)
////        }
////    }
////}
////    customString += tCopy
////
////    return customString
////}
//
////CORRECT ANSWER !
//
//func customSortString(_ S: String, _ T: String) -> String {
//    var dict = [Character: Int]()
//    var otherDict = [Int: Character]()
//    for (index, char) in S.enumerated() {
//        dict[char] = index
//        otherDict[index] = char
//    }
//
//    print("dict \(dict)")
//    print(otherDict)
//
//    var charArr = [Character]()
//    var orders = [Int](repeating: 0, count: 26)
//    for char in T {
//        if let order = dict[char] {
//            orders[order] += 1
//            print("orders \(orders)")
//        } else {
//            charArr.append(char)
//            print("character array \(charArr)")
//        }
//    }
//
//    for (index, num) in orders.enumerated() {
//        var count = num
//
//        while count != 0 {
//            charArr.append(otherDict[index]!)
//            count -= 1
//        }
//    }
//
//    return String(charArr)
//}
////let S = "kqep"
////let T = "pekeq"
////customSortString(S, T)
//
////print(customSortString("abdc", "adcebc")) // result could be eabdcc
////print(customSortString("cdy", "jclyhd")) // result could be jlhcdy
//print(customSortString("gpqitv", "dbpwmdivubgstnkq")) // result could be dbwmdubsnkgpqitv

func sameNumberOfOccurences(_ intergers:[Int]) -> Bool {
var freqDict = [Int:Int]()
var setOfInts = Set<Int>()

for num in intergers {
    if let value = freqDict[num] {
     freqDict[num] = value + 1
    } else {
      freqDict[num] = 1
    }
}

for (_ , value) in freqDict {
    
    let value = setOfInts.update(with: value)
        if value != nil {
                return false
            }
        }
    
    return true
}

var trueInput = [-3,0,1,-3,1,1,1,-3,10,0]
var falseInput = [1,2]
var trueInput2 = [1,2,1,2,3,1]
var falseInput2 = [1,2,3,4,5,6,6,5,4,3,2,1]


print(sameNumberOfOccurences(trueInput))
print(sameNumberOfOccurences(falseInput))
print(sameNumberOfOccurences(trueInput2))
print(sameNumberOfOccurences(falseInput2))
