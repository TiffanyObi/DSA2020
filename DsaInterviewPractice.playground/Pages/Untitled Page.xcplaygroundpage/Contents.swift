//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.

func isValid(_ s: String) -> Bool {
   var counter = 0
    var sArray = [Character]()
    
    for symbol in s {
        switch symbol {
            case "(":
            counter += 1
           sArray.append(symbol)
            case ")":
            if sArray.last == "(" {
             counter -= 1
                sArray.popLast()
            } else {
                return false
            }
            case "{":
            counter += 1
            sArray.append(symbol)
            case "}":
            if sArray.last == "{" {
           counter -= 1
            sArray.popLast()
            } else {
                return false
            }
            case "[":
            counter += 1
            sArray.append(symbol)
            case "]":
            if sArray.last == "["{
            counter -= 1
            sArray.popLast()
            }else {
                return false
            }
            
            default:
            print("sorry wrong symbol")
        }
    }
    
    if counter != 0 {
        return false
    }
    
    return true
}

