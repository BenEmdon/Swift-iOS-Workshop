/*:
# Simple Values
## Variables and Constants
*/
// Use `var` to make a variable
var myVariable = 42
myVariable = 50
// `let` to make a constant
let myConstant = 42

//: ## Types and Type Inference
// All values have a type (like in Java and C/C++).
// While you didn't explicitly specify the type of the variable and constant above ☝️ the type was INFERED by the compiler
// ☝️ Above the compiler infered that the types of `myVariable` and `myConstant` were of type Int

// You can also explicitly delcare a variables type
// Heres an example of the difference between explicit and implicit:
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

//: ## Strings
// You can also convert one type to another type:
let dogsAge = 4
let dogDescription = "Jozi is " + String(dogsAge) + " years old."

// You can also do String interpolation:
let dogDescription2 = "Jozi is \(dogsAge) years old."

//: ## Arrays and Dictionaries
let shoppingList = ["apples", "pears", "milk"]
shoppingList[0]

let namesAndAge = ["Ben": 20, "Rico": 22]
namesAndAge["Rico"]

// How to create an empty array:
let emptyArrayInferred = [String]()
let emptyArrayExplicit: [String] = []

// How to create an empty dictionary:
let emptyDictionaryInferred = [String: Int]()
let emptyDictionaryExplicit: [String: Int] = [:]

//: [👉 continue the tour](@next)
