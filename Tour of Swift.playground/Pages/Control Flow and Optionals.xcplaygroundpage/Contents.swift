/*:
# Control Flow
*/

// This will probabily look familiar
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
// Heres how you would iterate over an Array:
for score in individualScores {
	if score > 50 {
		teamScore += 3
	} else {
		teamScore += 1
	}
}
print(teamScore)

//: Optionals
// An optional value either contains a value or contains `nil` to indicate that a value is missing.
var optionalString: String? = nil
print(optionalString)

optionalString = "Hello there."
print(optionalString)

// To check that a value is indeed there and not `nil` we can do a `if let` check:
if let string = optionalString {
	print(string)
}

//: [👉 continue the tour](@next)
