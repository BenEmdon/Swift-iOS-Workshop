/*:
# Simple Values
### Variables and Constants
*/
// Use `let` to make a constant and `var` to make a variable.
var myVariable = 42
myVariable = 50
let myConstant = 42

//: ### Types and Type Inference
// All variables and constants have a type (like in Java and C/C++).
// While you didn't explicitly specify the type of the variable and constant above ☝️ the type was INFERED by the compiler.
// ☝️ Above the compiler infered that the types of `myVariable` and `myConstant` were of type Int.

// You can also explicitly delcare a variables type.
// Heres an example of the difference between explicit and implicit:
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

//: ### Strings
// You can also convert types to other types:
let dogsAge = 4
let dogDescription = "Jozi is " + String(dogsAge) + " years old."

// You can also do String interpolation:
let dogDescription2 = "Jozi is \(dogsAge) years old."

//: ### Arrays and Dictionaries
let shoppingList = ["apples", "pears", "paint"]
shoppingList[0]

let namesAndAge = ["Ben": 20, "Rico": 23]
namesAndAge["Rico"]

// How to create an empty array:
let emptyArrayInfered = [String]()
let emptyArrayExplicit: [String] = []

// How ro create an empty dictionary:
let emptyDictionaryInfered = [String: Int]()
let emptyDictionaryExplicit: [String: Int] = [:]

