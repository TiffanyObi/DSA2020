//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
//// ARRAYS //
////Removing Elements
////remove(at:)
//
//
////removeLast()
//
////dropLast()
//let names = ["Tanya","Alex","Eric","Bob","Peter"]
//
//let modifiedNames = names.dropLast(2)
//
//print(names)
//print(modifiedNames)
//
//let newArray = names.dropLast()
//print(newArray)


// EXERCISES FOR ARRAYS LESSON //

//number 1
//Create an array of strings called colors that contain "orange", "red", "yellow", "turquoise", and "lavender".
//
//Then, using array subscripting and string interpolation, print out the String "orange, yellow, and lavender are some of my favorite colors"

let colors = ["orange", "red", "yellow", "turquoise", "lavender"]


//print("\(colors[0]), \(colors[2]), and \(colors[colors.count - 1]) are some of my favorite colors")


//number 2
//Remove "Illinois" and "Kansas" from the array below.

var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]
westernStates = westernStates.dropLast(2)
//print(westernStates)


//number 3
//Iterate through the array below. For each state, print out the name of the state, a colon, and whether it is or is not in the continental United States.

let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]

//for state in moreStates {
//    if state == "Hawaii" {
//        print("NOT a continental state ")
//    } else {
//        print("Is an continental state")
//    }
//}


//number 4
//Print out how many non-whitespace characters are in myString:

let myString = "This is good practice with Strings!"

func getCount(_ string:String) -> Int {
    
    var counter = 0
    for char in string {
        if char != " " {
            counter += 1
        } else {
            continue
        }
    }
    return counter
}
print("There are \(getCount(myString)) non-whitespace characters in myString")


// number 5
//Iterate through the array below. For each sentence, print out how many non-whitespace characters are in it.

let myFavoriteQuotes = ["To be or not to be, that is the question.", "The only source of knowledge is experience.", "Mr. Gorbachev, tear down this wall!", "Four score and twenty years ago..."]

func getMultipleCounts(_ quotes:[String]) -> [String] {
    var countRecord = [String]()
    var count = 0
    for quote in quotes {
        
        for char in quote {
            if char != " " {
                count += 1
            } else {
                continue
            }
        }
        
        countRecord.append("\(quote) - has \(count) non-whitespace characters.")
        count = 0
    }
    
    return countRecord
}

//print(getMultipleCounts(myFavoriteQuotes))

//The below array represents an unfinished batting lineup for a baseball team. You, the coach, need to make some last minute changes:
//
//Add "Suzuki" to the end of your lineup.
//Change "Jeter" to "Tejada".
//Change "Thomas" for "Guerrero"
//Put "Reyes" to bat 8th instead.
var battingLineup = ["Reyes", "Jeter", "Ramirez", "Pujols","Griffey","Thomas","Jones", "Rodriguez"]

battingLineup.append("Suzuki")
for (index,name) in battingLineup.enumerated() {
    if name == "Jeter" {
        battingLineup[index] = "Tejada"
    } else if name == "Thomas" {
        battingLineup[index] = "Guerrero"
    }
}

if let index = battingLineup.firstIndex(of: "Reyes") {
    let name = battingLineup[index]
    battingLineup.remove(at: index)
    battingLineup.insert(name, at: 7)
}

//print(battingLineup)

//number 7
//Given an array of Ints, find out if it contains a target number.
//
//(The built-in contains(_:) function will do this, but you aren't allowed to use it for this exercise.)
//
//var numbers: [Int]
//
//let target: Int = 32
//Ex.1
//
let numbers = [4,2,6,73,32,4,2,1]
//
let target = 32
//
////true

func findTargetNum(_ input:[Int],_ target: Int) -> Bool {
    var bool = false

for num in input {
    if num == target {
        bool = true
    }
    
  }
    return bool
}

print(findTargetNum(numbers, target))

//Ex.2
let numbers2 = [32459,2,4,5,1,4,2,1]
//
let target2 = 3
//
////false

print(findTargetNum(numbers2, target2))

//number 8

//Find the largest value in an array of Int. Do not use the built-in max() method.
//
let arrayOfNumbers: [Int] = (1...100).map{ _ in Int.random(in: 0...300)}.map{Int($0)}
//
////This creates an array of 100 numbers in between 0 and 200.

var maxInt: Int!
for num in arrayOfNumbers {
    if maxInt == nil {
        maxInt = num
    } else if num > maxInt {
       maxInt = num
    }
}
//print(arrayOfNumbers)
//print(maxInt)

//number 9
//Find the smallest value in an array of Int. Do not use the built in min() method.

//let arrayOfNumbers: [Int] = (1...100).map{ _ in Int.random(in: 0...200)}.map{Int($0)}

var minInt:Int!

for num in arrayOfNumbers {
    if minInt == nil {
        minInt = num
    } else if num < minInt {
       minInt = num
    }
}
//print(arrayOfNumbers)
//print(minInt ?? 123)

//This creates an array of 100 numbers in between 0 and 200.


// number 10

//Iterate through secondListOfNumbers, and print out all the odd numbers.

var secondListOfNumbers = [19,13,14,19,101,10000,141,404]

for number in secondListOfNumbers {
    if number % 2 != 0 {
        print("\(number)" , terminator: " ")
    }
}

//number 11
//Iterate through thirdListOfNumbers, and print out the sum.

var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]

var sum = 0
for num in thirdListOfNumbers {
    sum += num
}
print()
print(sum)

//number 12
//Iterate through thirdListOfNumbers, and print out the sum of all the even numbers.

//var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]

var evenSum = 0
for num in thirdListOfNumbers {
    if num % 2 == 0 {
        evenSum += num
    }
}

print(evenSum)

//number 13
//Append every Int that appears in both listOne and listTwo to the sharedElements array. Then print how many Ints are shared.
//
//Assumption: both arrays are of equal length.
//
//Constraints: you cannot use Sets

var listOne = [28, 64, 7, 96, 13, 32, 94, 11, 80, 68]
var listTwo = [18, 94, 48, 6, 42, 68, 79, 76, 13, 7]
var sharedElements = [Int]()

for num in listOne {
    if listTwo.contains(num) {
        sharedElements.append(num)
    }
}

print("sharedElemenets has \(sharedElements.count) shared elements")


//number 14
//Write code such that noDupeList has all the same Ints as dupeFriendlyList, but has no more than one of each Int.

//Constraints: you cannot use Sets

var dupeFriendlyList = [4,2,6,2,2,6,4,9,2,1]
var noDupeList: [Int] = []

for num in dupeFriendlyList {
    if !noDupeList.contains(num){
        noDupeList.append(num)
    }
}

print(noDupeList)


// number 15
//Find the second smallest number in an Array of Ints

let arrayOfNumbers2 = [-6, 13, 0, 34, 0,-54, 45, -12, 9, 11, 4]

var secondSmallest = Int.max
var smallest = Int.max

for num in arrayOfNumbers2 {
  if num < smallest {
    secondSmallest = smallest
    smallest = num
  } else if num < secondSmallest && num != smallest {
    secondSmallest = num
  }
}
print(smallest)
print(secondSmallest)
