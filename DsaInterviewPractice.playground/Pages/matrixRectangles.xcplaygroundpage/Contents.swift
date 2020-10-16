//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//Input: mat = [[1,0,1],
//              [1,1,0],
//              [1,1,0]]
//Output: 13
//Explanation:
//There are 6 rectangles of side 1x1.
//There are 2 rectangles of side 1x2.
//There are 3 rectangles of side 2x1.
//There is 1 rectangle of side 2x2.
//There is 1 rectangle of side 3x1.
//Total number of rectangles = 6 + 2 + 3 + 1 + 1 = 13.
//
//Input: mat2 = [[0,1,1,0],
//              [0,1,1,1],
//              [1,1,1,0]]
//Output: 24
//Explanation:
//There are 8 rectangles of side 1x1.
//There are 5 rectangles of side 1x2.
//There are 2 rectangles of side 1x3.
//There are 4 rectangles of side 2x1.
//There are 2 rectangles of side 2x2.
//There are 2 rectangles of side 3x1.
//There is 1 rectangle of side 3x2.
//Total number of rectangles = 8 + 5 + 2 + 4 + 2 + 2 + 1 = 24.

//The solution was
//func numSubmat(_ mat: [[Int]]) -> Int {
//        let n = mat.count
//        let m = mat[0].count
//        var matrix = mat
//        var res = 0
//        for i in 0..<n {
//            for j in 0..<m {
//                if (matrix[i][j] == 1) {
//                    var minval = j > 0 ? 1 + matrix[i][j - 1] : 1
//                    matrix[i][j] = minval
//                    res += matrix[i][j]
//                    var k = i - 1
//                    while (k >= 0 && (minval > 0) ) {
//                        minval = min(minval, matrix[k][j])
//                        k -= 1
//                        res += minval
//                    }
//                }
//            }
//        }
//        return res
//}

