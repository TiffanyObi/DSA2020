//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//QUESTION 1

var applesDict: [String: Int] = ["Adam": 3,
                                 "Beth": 5,
                                 "Cal": 3,
                                 "Dan": 5,
                                 "Eve": 4]
//a. Set eveAppleCount equal to the number of apples that Eve has

if let eveAppleCount = applesDict["Eve"] {
    print(eveAppleCount)
}

//b. Change the number of apples that Adam has to 4

applesDict["Adam"] = 4
print(applesDict["Adam"] ?? 0)

//c. Set calAndDanAppleCount equal to the sum of Cal and Dan
// this way will not give one count if they dnt both exist
if let calCount = applesDict["Cal"], let danCount = applesDict["Dan"] {
    let calAndDanAppleCount = calCount + danCount
    print(calAndDanAppleCount)
}
//this was will give u the count of one even if the other doesnt exist
let calAndDanAppleCount = (applesDict["Cal"] ?? 0) + (applesDict["Dan"] ?? 0)
print(calAndDanAppleCount)

//d. Set all the values in applesDict to 0
// this is the simple
for (key,_) in applesDict {
    applesDict[key] = 0
}
print(applesDict)

//this is the more advance way

applesDict.forEach { applesDict[$0.key] = 0}
print(applesDict)

//QUESTION 2
var citiesDict: [String: String] = ["Afghanistan": "Kabul",
                                    "Russia": "Moscow",
                                    "Iceland": "Reykjavik"]

//a. Set russiaCapital equal to Russia's capital using citiesDict
if let russiaCapital = citiesDict["Russia"]{
    print(russiaCapital)
}

//b. Add a new key value pair "Jamaica" and its capital "Kingston"

//this is the long way

//if let jamaicasCapital = citiesDict["Jamaica"] {
//    print(jamaicasCapital)
//} else {
//    citiesDict["Jamaica"] = "Kingston"
//    print(citiesDict["Jamaica"] ?? "")
//}

//short way
citiesDict["Jamaica"] = "Kingston"
print(citiesDict)

//c. Add a new key value pair "Indonesia" and its capital "Jakarta"

citiesDict["Indonesia"] = "Jakarta"
print(citiesDict)

//QUESTION 3
//a. Create a dictionary that represents the table below listing an authors name and their comprehensibility score.

/*
 | Author Name |    Score |
 | :--: | :--: |
 | Mark Twain |    8.9 |
 | Nathaniel Hawthorne    | 5.1 |
 | John Steinbeck    | 2.3 |
 | C.S. Lewis | 9.9 |
 | Jon Krakauer | 6.1 |
 */

var authorScores = [String: Double] ()

//this works but isnt the proper way
authorScores["Mark Twain"] = 8.9
authorScores["Nathaniel Hawthorne"] = 5.1
authorScores["John Steinbeck"] = 2.3
authorScores["C.S. Lewis"] = 9.9
authorScores["Jon Krakauer"] = 6.1

//proper way

//authorScores = ["MarkTain": 8.9, "": , "",]
print(authorScores)

//b. Add an additional author named “Erik Larson” with an assigned score of 9.2.

authorScores["Erik Lawson"] = 9.2

//QUESTION 3

//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his full name.
var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "3"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "13"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

var highestScore = Int.min
var highestScoringName = ""

for person in peopleWithScores {
        if let score = person["score"] {
            if (Int(score) ?? 0) > highestScore {
                highestScore = (Int(score) ?? 0)
                highestScoringName = (person["firstName"] ?? "no name") + " " + (person["lastName"] ?? "no name")
            }
        }
}
print(highestScoringName)

