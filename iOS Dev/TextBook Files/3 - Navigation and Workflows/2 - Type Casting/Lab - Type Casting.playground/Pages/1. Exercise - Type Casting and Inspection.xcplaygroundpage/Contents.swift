/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var anyTypeCollection: [Any] = [true, "yes", 1, 3.6]

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in anyTypeCollection {
    if item is Int {
        print("the integer has a value of \(item)")
    } else if item is Bool {
        print("The Boolean has a value of \(item)")
    } else if item is Double {
        print("The Double has a value of \(item)")
    } else if item is String {
        print("The String has a value of \(item)")
    }
}


//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var testDictionary: [String:Any] = ["Double": 3.6, "Int": 6, "string": "This is a string", "Boolean": true]
print(testDictionary)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total = 0.0
for (word, typeKey) in testDictionary{
    if let intKeyType = typeKey as? Int {
        total += Double(intKeyType)
    } else if let boolKeyType = typeKey as? Bool {
        if boolKeyType == true {
            total += 2
        } else {
            total -= 3
        }
    } else if let stringKeyType = typeKey as? String {
        total += 1
    } else if let doubleTypeKey = typeKey as? Double {
        total += doubleTypeKey
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for (word, typeKey) in testDictionary{
    if let intKeyType = typeKey as? Int {
        total2 += Double(intKeyType)
    } else if let stringKeyType = typeKey as? String {
        total2 += Double(stringKeyType.count)
    } else if let doubleTypeKey = typeKey as? Double {
        total2 += doubleTypeKey
    }
}
print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
