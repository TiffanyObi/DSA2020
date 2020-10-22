//: [Previous](@previous)

import Foundation



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
newQueue.dequeue()
newQueue.dequeue()
newQueue.dequeue()
print(newQueue.description)
