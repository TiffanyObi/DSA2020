//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

/*
        8
      /   \
     11    4
    /  \    \
   7   30    6
*/

//Implement a Binary Tree

class BinaryTreeNode<T>{
    var value:T
    var leftChild:BinaryTreeNode?
    var rightChild:BinaryTreeNode?
    
    init(_ value: T){
        self.value = value
    }
}
//Implement a Queue
struct Queue<T> {
    private var elements = [T]()
    
    public var isEmpty:Bool {
        return elements.isEmpty
    }
    public var front: T? {
        return elements.first
    }
    
    public var count: Int {
        return elements.count
    }
    
    mutating func enqueue(_ element:T){
        elements.append(element)
    }
    
    mutating func dequeue() -> T? {
        guard !isEmpty else { return nil }
        return elements.removeFirst()
    }
    
    }

func breadthFirstTraversal<T>(_ treeNode: BinaryTreeNode<T>?){
       //1.
       //create an instannce of queue to hold nodes as we visit them
       
       var queue = Queue<BinaryTreeNode<T>>()
       
       //2. guard to ,make sure the tree has values
       guard let _ = treeNode else {
           return // Void
       }
       
       //3. print the root value
       (print(treeNode!.value))
   
    //4 . enqueue the root
       queue.enqueue(treeNode!)
    
    //5. use a while let to dequeue the values as we traverse the tree
    while let node = queue.dequeue() {
        
        //6
        if let leftChild = node.leftChild {
            // 6a.
            queue.enqueue(leftChild)
            
        // 6b
            print(leftChild.value)
        }
        
        //7
        if let rightChild = node.rightChild {
            queue.enqueue(rightChild)
            print(rightChild.value)
        }
    }
}
let rootNode = BinaryTreeNode(8)
let elevenNode = BinaryTreeNode(11)
let fourNode = BinaryTreeNode(4)
let sevenNode = BinaryTreeNode(7)
let thirtyNode = BinaryTreeNode(30)
let sixNode = BinaryTreeNode(6)

rootNode.leftChild = elevenNode
rootNode.rightChild = fourNode
elevenNode.leftChild = sevenNode
elevenNode.rightChild = thirtyNode
fourNode.rightChild = sixNode

//breadthFirstTraversal(rootNode)

//Implement a BreadthFirst Traversal
//expected output : 8 , 11 , 4 , 7 , 30 , 6

//write a function to traverse a Binary Tree in-order
//left (recursively)- root(print) - right(recursively)


func inOrderTraversal<T>(_ rootNode: BinaryTreeNode<T>?){
    //step 1:visit left
    
    if let leftChild = rootNode?.leftChild {
        inOrderTraversal(leftChild)
    }
    
    
    //step2:visit root
    if let root = rootNode {
        print(root.value)
    }
    
    //step3:visit
    if let rightChild = rootNode?.rightChild{
        inOrderTraversal(rightChild)
    }
}

//inOrderTraversal(rootNode)


//post -order traversal : left, right , root
func postOrderTraversal<T>(_ rootNode:BinaryTreeNode<T>?){
    //left recursively
    if let leftChild = rootNode?.leftChild {
        postOrderTraversal(leftChild)
    }
    
    //right recurseively
    
    if let rightChild = rootNode?.rightChild{
        postOrderTraversal(rightChild)
    }
    
    //print root
    if let root = rootNode{
        print(root.value)
    }
}

//postOrderTraversal(rootNode)


//preOrderTraversal

func preOrderTraversal<T>(_ rootNode:BinaryTreeNode<T>?){
    //print root first
    if let root = rootNode {
        print(root.value)
    }
    
    
    //visit left recursively
    
    if let leftChild = rootNode?.leftChild {
        preOrderTraversal(leftChild)
    }
    
    
    //visit right recursively
    
    if let rightChild = rootNode?.rightChild {
        preOrderTraversal(rightChild)
    }
}

preOrderTraversal(rootNode)
