/*:
## Exercise - Generic Types
 
 While most collections involve working with values at the beginning, end, or a specific index or the collection, this array only allows you to retrieve items from the center of the array. You know when you look at a stack of plates in the cupboard and the top one didn't get clean enough or it's a little bit dusty, but getting the bottom one would be too hrd to fish out, so you grab one from the middle of the stack? So this will be our "StackOfPlates" collection type.
 */
import Foundation


struct StackOfPlates<T> {
    var id = UUID()
    
    private var array = [T]()
    
    init(array: [T]) {
        self.array = array
    }
    
    mutating func push(_ value: T) {
        array.append(value)
    }

    mutating func pop() -> T? {
        guard !array.isEmpty else { return nil }
        let middleIndex = (array.count - 1) / 2
        return array.remove(at: middleIndex)
    }
}

//:  Convert the StackOfPlates struct to be a generic type so that it can hold any type, not just String. Test it below by creating several StackOfPlates instances using different types.
var test1 = StackOfPlates(array: ["Hello", "World", "Test", "Test 2"])
var test2 = StackOfPlates(array: [3, 4, 5, 6])
var test3 = StackOfPlates(array: [true, false, true, false])
print(test1)
print(test2)
print(test3)
//: Use an extension of StackOfPlates to conform it to Identifiable so that one stack of plates has a separate ID than another.
extension StackOfPlates: Identifiable { }
/*:
[Previous](@previous)  |  page 2 of 4  |  [Next: Exercise - Associated Types](@next)
 */
