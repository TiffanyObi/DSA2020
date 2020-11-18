//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//Question 1

//Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates. It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]

var numbersWithNoDuplicates = [Int]()

func removeDuplicates(_ arr: [Int]) -> [Int] {
    var newArray = Set<Int>()
    
    for num in arr {
        
        if !newArray.contains(num) {
        newArray.insert(num)
        numbersWithNoDuplicates.append(num)
    }
}
     return numbersWithNoDuplicates
}

//print(removeDuplicates(numbers))

//Question 2

//Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once. It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

var scoresThatAppearOnce = [Int]()

func scoreThatAppearOnce(_ arr: [Int]) -> [Int]{
    var freqDict = [Int:Int]()
    
    for score in arr {
        if let _ = freqDict[score] {
        if  let index = scoresThatAppearOnce.firstIndex(of: score){
                scoresThatAppearOnce.remove(at: index)
            }
        } else {
            freqDict[score] = 1
            scoresThatAppearOnce.append(score)
        }
    }
    return scoresThatAppearOnce
}

//print(scoreThatAppearOnce(scores))

//Question 3

//a. Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo. It should not contain any duplicate elements. Sort arrThree from smallest to greatest.

let arrOne = [1,2,3,4,5]
let arrTwo = [3,4,5,6,7]

var arrThree: [Int] = []

func findUnion(_ arr1:[Int], _ arr2:[Int]) -> [Int] {
    let unionSet = Set(arr1).union(Set(arr2))
    
    arrThree = Array(unionSet).sorted()
   return arrThree
}

//print(findUnion(arrOne, arrTwo))

//b. Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive. If should not contain any duplicate elements. Sort arrSix from smallest to greatest.

let arrFour = [1,2,3,4,5]
let arrFive = [3,4,5,6,7]

var arrSix: [Int] = []

func findIntersection(_ arr4: [Int], _ arr5: [Int]) -> [Int]{
    let intersectionSet = Set(arr4).intersection(Set(arr5))
    arrSix = Array(intersectionSet).sorted()
    
    return arrSix
}

//print(findIntersection(arrFour, arrFive))


//Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne = [2, 4, 5, 6, 8, 10, 12]
let numsTwo = [1, 2, 3, 4, 5, 6]
let numsThree = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour = [1, 3, 4, 5, 6, 7, 9]

var allNumsWithNoDuplicates: [Int] = []

let unionOfAll = Set(numsOne).union(Set(numsTwo)).union(Set(numsThree)).union(Set(numsFour))
//cleaner way is to write
//let unionOfAll = Set(numsOne + numsTwo + numsThree + numsFour)
allNumsWithNoDuplicates = Array(unionOfAll).sorted()
//print(allNumsWithNoDuplicates)

//Question 5
//Roy wanted to increase his typing speed for programming contests. His friend suggested that he type the sentence The quick brown fox jumps over the lazy do repeatedly. This sentence is known as a pangram because it contains every letter of the alphabet.
//
//After typing the sentence several times, Roy became bored with it so he started to look for other pangrams.
//
//Given a sentence, determine whether it is a pangram. Ignore case.

let pangram = "The quick brown fox jumps over the lazy dog"
let nonPangram = " whati gwan bredron"

let alphabet = "abcdefghijklmnopqrstuvwxyz"

func findPangram(_ inputString:String) -> Bool {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var alphabetDict = [Character:Int]()
    
    for char in inputString.lowercased() {
        if let value = alphabetDict[char] {
            alphabetDict[char] = value + 1
        } else {
            alphabetDict[char] = 1
        }
    }
    
    for char in alphabet {
        if let _ = alphabetDict[char] {
            
        } else {
            return false
        }
    }
    
    return true
}

//print(findPangram(alphabet))
//print(findPangram(pangram))
//print(findPangram(nonPangram))
//print(findPangram("yer"))

let testTrueString = "We promptly judged antique ivory buckles for the next prize"
let testFalseString = "We promptly judged antique ivory buckles for the prize"

print(findPangram(testTrueString))
print(findPangram(testFalseString))
