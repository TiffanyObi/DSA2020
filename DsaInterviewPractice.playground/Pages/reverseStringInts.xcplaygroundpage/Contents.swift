//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func reverse(_ x: Int) -> Int {
    let sign = x < 0 ? -1 : 1
    var num = x * sign
    var result = 0

    while num > 0 {
        let digit = num % 10
        result = (result * 10 + digit)
        num /= 10
    }
    
    result = result * sign
    if result > (1 << 31) - 1 {
        result = 0
    } else if result < -(1 << 31) {
        result = 0
    }
    
    return result
}

print(reverse(3579))


