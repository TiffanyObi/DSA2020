//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//Write a function to find the longest common prefix string amongst an array of strings.
//
//If there is no common prefix, return an empty string "".

func longestCommonPrefix(_ strs: [String]) -> String {
       var commonPrefix = ""
       var prefix = ""
    

       
       guard !strs.isEmpty else {return ""}
       var firstWord = strs.first!
       
       for char in firstWord {
           prefix.append(char)
           
           for string in strs[1...] {
               if !string.hasPrefix(prefix){
                   return commonPrefix
               }
               
           }
             commonPrefix = prefix
       }
       
       return commonPrefix
   }

longestCommonPrefix(["what","hysg"])
