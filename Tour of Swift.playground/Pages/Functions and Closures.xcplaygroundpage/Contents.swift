/*:
# Functions and Closures
*/

// Use keyword `func` to start defining a fuction:
func factorial(number: Int) -> Int {
	if number <= 1 {
		return 1
	} else {
		return number * factorial(number: number - 1)
	}
}

// Invoking a function:
factorial(number: 1)
factorial(number: 2)
factorial(number: 3)
factorial(number: 4)

// Since functions are closures, they can be passed around like other values
let factorialFunction = factorial
factorialFunction(4)

//: [👉 continue the tour](@next)
