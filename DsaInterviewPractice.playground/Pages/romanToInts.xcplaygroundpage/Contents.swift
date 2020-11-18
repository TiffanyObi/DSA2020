//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func romanToInt(_ s: String) -> Int {
       
       var previous = ""
       var number = 0
       
       for char in s.uppercased() {
           switch char {
               
               case "M":
               if previous.last == "C" {
                   number -= 100
                   number += 900
               } else {
                   number += 1000
                 
               }
               
               case "D":
               if previous.last == "C" {
                   number -= 100
                   number += 400
               } else {
                   number += 500
               }
               
               case "C":
                   if previous.last == "X" {
                       number -= 10
                       number += 90
                   } else {
                       number += 100
                   }
               case "L":
               if previous.last == "X"{
                   number -= 10
                   number += 40
               } else {
                   number += 50
               }
               
               case "X":
               if previous.last == "I"{
                   number -= 1
                   number += 9
               } else {
                   number += 10
               }
               
               case "V":
               if previous.last == "I"{
                   number -= 1
                   number += 4
                   } else {
                       number += 5
                   }
               
               case "I":
                   if previous.last == "V"{
                      number += 1
                   } else {
                       number += 1
                   }
                 default:
               print("wrong symbol")
               }
           previous.append(char)
        print(number)
       }
   return number
           }
print(romanToInt("IV"))
