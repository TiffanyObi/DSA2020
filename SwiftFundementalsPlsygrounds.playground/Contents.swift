import UIKit

var str = "Hello, playground"

func printUpToTenString() -> String {
    var string = ""
    for num in 1...10 {
        string.append("\(num )")
    }
    return string
}

print(printUpToTenString())


func printEven() -> String {
    var string = ""
    let range = Array(5...51)
    for (_,num) in range.enumerated() where num % 2 == 0 {
    string += "\(num) "
    }
    return string
}

print(printEven())

func printAllFour() -> String {
    let range = Array(1...60)
    var string = ""
    for (_,num) in range.enumerated() where num % 10 == 4 {
     string.append("\(num) ")
    }
    return string
}

print(printAllFour())

func printCharactersInString(_ input:String){
    for char in input {
        print(char)
    }
}

//let inputString = "Hello world!"
//printCharactersInString(inputString)


func printLastCharacterIntString(_ input:String) -> Character {
    let lastIndex = input.index(before: input.endIndex)
    return input[lastIndex]
}
print(printLastCharacterIntString("Hello World, how are you"))


func replaceCharacters(_ input:String) -> String {
    var replacedString = ""
    
    for char in input {
        if char == "e" {
            replacedString.append("*")
        } else {
            replacedString.append(char)
        }
    }
    
    return replacedString
}

let aString = "Replace the letter e with *"
print(replaceCharacters(aString))

func reversedSting(_ input: String) -> String {
    var reversedString = ""
    
    for char in input {
        reversedString.insert(char, at: reversedString.startIndex)
    }
    
    return reversedString
}

let aString2 = "Hello World"
print(reversedSting(aString2))

func findPalindromString(_ input:String) -> Bool {
    var reversedString = ""
    
    for char in input {
        reversedString.insert(char, at: reversedString.startIndex)
    }
    
    if reversedString == input {
        return true
    }
    
    return false
}

let str1 = "anutforajaroftuna" // should be true
let str2 = "Hello" // should be false

print(findPalindromString(str1))
print(findPalindromString(str2))

func printWordsOnNewLines(_ input:String) {
    let wordArray = input.components(separatedBy: " ")
    var index = 0
    
    while index <= (wordArray.count - 1){
        print(wordArray[index])
        index += 1
    }
}

let problem = "split this string into words and print them on separate lines"
let problem2 = "find the longest word in the problem description"
//printWordsOnNewLines(problem)

func findLongestWordInString(_ input:String) -> String {
    var longestString = ""
    let wordArray = input.components(separatedBy: " ")
    
    for word in wordArray {
        if longestString.count < word.count {
           
            longestString = word
        }
    }
    return longestString
}

print(findLongestWordInString(problem)) // should be seperate
print(findLongestWordInString(problem2)) // should be description


func findVowelsAndConsonants(_ input:String) -> (Int,Int) {
    
    var vowelCount = 0
    var consonantCount = 0
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    
    for char in input{
        if vowels.contains(char.lowercased()) {
            vowelCount += 1
        } else if consonants.contains(char.lowercased()) {
            consonantCount += 1
        }
    }
    
    return (vowelCount,consonantCount)
}

let input = "Count how many vowels I have!"
print(findVowelsAndConsonants(input))

func printLastWord(_ input:String) -> String {
    let wordArray = input.components(separatedBy: " ")
    let endIndex = wordArray.count - 1
    
    let lastWordCount = wordArray[endIndex].count
    print(wordArray[endIndex])
    
    if wordArray[endIndex].first?.isLetter != true {
        return "No Last Word"
    } else {
        return "\(lastWordCount)"
    }
}
print(printLastWord(input))

func printCondensedString(_ input:String) -> String {
    let wordArray = input.components(separatedBy: " ")
    var condensedString = ""
    
    
    for char in wordArray {
        if char == "" {
            continue
        } else {
            condensedString.append("\(char) ")
        }
    }
    return condensedString
}

let testString = "  How   about      thesespaces  ?  "
print(printCondensedString(testString))


func reverseWordsInString(_ input:String) -> String {
    let wordArrday = input.components(separatedBy: " ")
    var reversedString = ""
    
    for word in wordArrday {
        reversedString.insert(contentsOf: "\(word) ", at: reversedString.startIndex)
    }
    
    return reversedString
}

var sampleString = "Swift is the best language"
print(reverseWordsInString(sampleString))


func findMultiplePalindromes(_ input:String) -> Int {
    let wordArray = input.components(separatedBy: " ")
    var reveresedWord = ""
    var count = 0
    
    
    for word in wordArray {
        
        reveresedWord = String(word.reversed())
        
        if word == reveresedWord {
            count += 1
            reveresedWord = ""
        }
    }
    return count
}
var sampleString2 = "danaerys dad cat civic bottle" // should be 2
print(findMultiplePalindromes(sampleString2))


func printStudentAwardStatus(_ input: String) -> Bool {
var absentCount = 0
var lateCount = 0
var previousChar:Character = " "
    for char in input.lowercased() {
    if char == "a" {
        absentCount += 1
        
        if absentCount > 1 {
            return false
        }
    }
    
    if char == "l" {
        lateCount += 1
        if previousChar == "l" {
            if lateCount > 2 {
                return false
            }
        }
    } else {
        lateCount = 0
    }
    previousChar = char
}
return true
}

let studentRecord = "PPALLP" // should be true
let studentRecord2 = "PPAALLP" // should be false
let studentRecord3 = "PPALLPPPLL" // should be true
let studentRecord4 = "PPPPALLLPPP" // should be false
//print(printStudentAwardStatus(studentRecord))
//print(printStudentAwardStatus(studentRecord2))
//print(printStudentAwardStatus(studentRecord3))
//print(printStudentAwardStatus(studentRecord4))

/*
 i want to see if i can recreate the ransom String using the magazine String
 if all of the letters in the ransom string are in the magazine string return true
 if they're not return false
 i want to make a freq dict for the elements in the magazineString
as i look at each element in the random string I want to  see if the element exists in the magazine String
 if it does i want to remove if from the count
 if the count for an element in the dictionary is ever equal to 0 or nil from the element in the ransom string i want to return false
 */

func findMatch(_ ransom:String,_ magazine:String) -> Bool {
    var magazineDict = [Character:Int]()
    
    for char in magazine {
        if let value = magazineDict[char] {
            magazineDict[char] = value + 1
        } else {
            magazineDict[char] = 1
        }
    }
    
    for char in ransom {
        if let value = magazineDict[char]{
            magazineDict[char] = value - 1
            if (magazineDict[char] ?? -99) == -1 {
                return false
            }
        } else {
                return false
        }
    }
    
    return true
}

print(findMatch("aa", "aab")) // should be true
print(findMatch("a", "b")) // should be false
print(findMatch("i am going away and im taking the memories", "ggoiing im awayy aand mmemoriess im the taking am today")) // should be true
print(findMatch("start spreading the news", "i'm leaving today")) // should be false

