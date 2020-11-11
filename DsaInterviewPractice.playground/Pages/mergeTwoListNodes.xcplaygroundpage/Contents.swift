//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
 }
//func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//       var l1 = l1
//       var l2 = l2
//    
//       while l1 != nil || l2 != nil {
//           if newList == nil {
//               if l1.val > l2.val {
//                   newList = l2
//               } else {
//                   newList = l1
//               }
//           } else {
//               if l1.val > l2.val {
//                   newList = l2
//               } else {
//                   newList = l1
//               }
//           }
//       }
//       
//   }
