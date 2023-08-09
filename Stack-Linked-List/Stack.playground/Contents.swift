import Foundation

/**
 Please implement the following Stack class which holds only Int values.
 You may add any methods, attributes, fields, constructors as you fit, without introducing any 3rd party libraries.
 You may also change signatures of the given methods with a reasonable explanation.
 
 Please specify which data structure you chose to hold the values and why as a comment on top of its declaration.
 
 For each method, please specify their runtime complexity with Big-O notation for best, worst and average cases.
 
 Please send back this file to hr@pyde.tech after you completed the implementation.
 Please add any of your comments to given areas here and to method's comments, under "Additional comments (if any):" part.
 
 Additional comments (if any):
 */

final class Node {
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}

final class Stack {
    
    /**
     Top element of the stack
     
     Data Structure:
     Linked List
     
     Additional comments (if any):
     I will use a linked list as the underlying data structure. This choice is made because linked lists allow us to efficiently add and remove elements at the top of the stack with constant-time complexity.
     The linked list allows us to maintain the order of elements in a last-in-first-out (LIFO) manner.
     */
    private var top: Node?
    
    /**
     Check if the stack is empty
     
     Runtime Complexity:
     Best: O(1)
     Worst: O(1)
     Average: O(1)
     
     Additional comments (if any):
     The isEmpty property checks if the top node is nil, which is a constant-time operation.
     */
    var isEmpty: Bool {
        top == nil
    }

    /**
     Adds the given value to the top of the stack
     
     Runtime Complexity
     Best: O(1
     Worst: O(1)
     Average: O(1)
     
     Additional comments (if any):
     The push method creates a new node with the given value and updates the next pointer to the current top node. Then, it sets the top pointer to the newly created node, which is a constant-time operation.
     */
    func push(value: Int) {
        let newNode = Node(value: value)
        newNode.next = top
        top = newNode
    }

    /**
     Removes and returns the value of the top-most element
     
     Runtime Complexity
     Best: O(1)
     Worst: O(1)
     Average: O(1)
     
     Additional comments (if any):
     The pop method retrieves the value of the top node and updates the top pointer to the next node, which is a constant-time operation.
     
     Returns nil if the stack is empty.
     */
    @discardableResult
    func pop() -> Int? {
        guard let poppedValue = top?.value else {
            return nil // Stack is empty, return nil.
        }
        top = top?.next
        return poppedValue
    }

    /**
     Returns the value of the top-most element
     
     Runtime Complexity
     Best: O(1)
     Worst: O(1)
     Average: O(1)
     
     Additional comments (if any):
     The peek method simply returns the value of the top node without modifying the stack, which is a constant-time operation.
     
     Returns nil if the stack is empty.
     */
    func peek() -> Int? {
        top?.value
    }
}

/**
 The extension CustomStringConvertible helps to print the stack in a readable format by traversing through the nodes and creating a string representation of the stack elements.
 */
extension Stack: CustomStringConvertible {
    
    var description: String {
        var currentNode = top
        var stackElements = [Int]()
        
        while let node = currentNode {
            stackElements.append(node.value)
            currentNode = node.next
        }
        
        return "Stack: " + stackElements.map { "\($0)" }.joined(separator: " -> ")
    }
}

let stack = Stack()

print(stack.pop())

print(stack.peek())

stack.push(value: 0)
stack.push(value: 3)
stack.push(value: 1)
stack.push(value: 2)
stack.push(value: 4)

print(stack)

print(stack.pop())

print(stack)

print(stack.peek())
