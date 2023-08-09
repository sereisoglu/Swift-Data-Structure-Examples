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
class Stack {
    
    /**
     Array of elements.
     
     Data Structure:
     Array-based Stack
     
     Additional comments (if any):
     I chose an array to implement the stack because it allows us
     to easily add and remove elements from the top (end) of the array, which
     aligns perfectly with the Last-In-First-Out (LIFO) nature of a stack.
     */
    private var elements = [Int]()
    
    /**
     Check if the stack is empty
     
     Runtime Complexity:
     Best: O(1)
     Worst: O(1)
     Average: O(1)
     
     Additional comments (if any):
     Accessing the count of the array is a constant-time operation.
     
     Checking if an array is empty is an O(1) operation as we can directly access the array's internal metadata to determine if it has any elements.
     */
    var isEmpty: Bool {
        elements.isEmpty
    }
    
    /**
     Adds the given value to the top of the stack
     
     Runtime Complexity
     Best: O(1
     Worst: O(1)
     Average: O(1)
     
     Additional comments (if any):
     Adding an element to the end of the array is a constant-time operation.
     
     Adding an element to the end of an array is an O(1) operation in most cases, as long as the array doesn't need to be resized.
     */
    func push(value: Int) {
        elements.append(value)
    }
    
    /**
     Removes and returns the value of the top-most element
     
     Runtime Complexity
     Best: O(1)
     Worst: O(1)
     Average: O(1)
     
     Additional comments (if any):
     Removing the last element from the array is a constant-time operation.
     
     Returns nil if the stack is empty.
     
     Removing the last element from the end of an array is an O(1) operation as we can directly access the last element without resizing the array.
     */
    @discardableResult
    func pop() -> Int? {
        elements.popLast()
    }
    
    /**
     Returns the value of the top-most element
     
     Runtime Complexity
     Best: O(1)
     Worst: O(1)
     Average: O(1)
     
     Additional comments (if any):
     Accessing the last element of the array is a constant-time operation.
     
     Returns nil if the stack is empty.
     
     Accessing the last element of the array is an O(1) operation.
     */
    func peek() -> Int? {
        elements.last
    }
}

/**
 It helps to print the stack properly
 */
extension Stack: CustomStringConvertible {
    
    var description: String {
        """
        ---- TOP ----
        \(elements.reversed().map { "\($0)" }.joined(separator: "\n"))
        -------------
        """
    }
}
