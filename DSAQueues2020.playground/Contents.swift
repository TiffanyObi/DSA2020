import UIKit

var str = "Hello, playground"

//use FIFO

//dequeue 3

//

//struct Queue<T> { //struvts are immutable by default so we
//    //have to mark the functions as "mutating"
//
//    // data structure to hold elemtnts of the Queue
//
//    //private is an "access modifier" or access control
//
//    //ENCAPSULATION!!!! explicitly marking your properties private
//    // very important of o-o-p
//    // Object Oriented Programming
//    // or Protocol Orienented Programming !
//
//    //encapsulations, inheritance, polymorphism (change the behavior of the "child" after inheriting abilities from "parent" . ex. tab controller inherits from view vontroller
//    private var elements = [T]() // Int / Bool / String etc
//
//    public var count:Int {
//        return elements.count
//    }
//    public var isEmpty: Bool {
////        return elements.count == 0
//        return elements.isEmpty
//    }
//
//    public var first: T? { //O(1)
//
//        // elements.first ( w/o writing the "return" output word still works because
//        // the compiler inferrs that something needs to be returned since its optional
//        return elements.first
//    }
//
//    public var last: T {
//        return elements[elements.count - 1]
//    }
//
//    public mutating func enqueue(_ element: T){
//       return elements.append(element)
//    }
//
//    public mutating func dequeue() -> T? {
//
//        guard !isEmpty else {
//            return nil}
//        return elements.removeFirst()
//    }
//
//    // Todo: pront elements of queue
//
//    public func printElements(){
//      print(elements)
//    }
//}
//
//var queue = Queue<Int>()
//print(queue.isEmpty)
//
//print(queue.dequeue() ?? "elements is empty")
//
//
//queue.enqueue(5)
//queue.enqueue(15)
//queue.enqueue(25)
//print(queue.count)
//
//print(queue.first ?? "no elements")
//
//queue.dequeue()
//
//print(queue.first ?? "no elements")
//
//queue.printElements()
//


//OPTIMIZED VERSION !!!!!!!!!!

struct Queue<T>{
    
    //data structure
    private var elements = [T?]() //optional because we need to set them to nil
    
    // private properties
    private var head = 0
    
    public var count: Int {
        return elements.count - head
    }
    
    //public properties
    public var isEmpty: Bool {
        return count == 0
    }
    
    public var front : T? {
        guard !isEmpty else {
            return nil
        }
        return elements[head]
    }
    
    var description : String {
//        let array = elements.compactMap {$0}
        
        var array = [Any]()
        for element in elements {
            if element == nil {
                array.append("nil")
            } else {
                array.append(element!)
            }
        }
        return array.description
    }
    
    //initialzers

    
    //=========================
    // a function inside an object is refeered to as a method
    //Methods
    //=========================
    
    public mutating func enqueue(_ element: T){
        elements.append(element)
    }

    
    //dequeue
    
    @discardableResult
    public mutating func dequeue() -> T? { // silences the return vlaue warning
        guard head < elements.count, let element = elements[head]
            else { return nil }
        elements[head] = nil
        head += 1
        
        //TODO: optimize to remove nil vlaues
        //make a ration of head / array count
        let percentage = Double(head) / Double(elements.count)
        if elements.count > 7 && percentage > 0.25 {
            print(percentage)
            elements.removeFirst(head)
            head = 0
        }
        return element
    }
}

var newQueue = Queue<Int>()
newQueue.enqueue(7)
newQueue.enqueue(6)
print(newQueue.description)
newQueue.enqueue(18)
newQueue.enqueue(84)
newQueue.enqueue(46)
newQueue.enqueue(98)
newQueue.enqueue(4)
newQueue.enqueue(69)
newQueue.enqueue(72)
print(newQueue.description)
newQueue.dequeue()
newQueue.dequeue()
newQueue.dequeue()
print(newQueue.description)
