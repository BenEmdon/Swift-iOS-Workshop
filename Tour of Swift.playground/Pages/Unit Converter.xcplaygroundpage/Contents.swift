/*:
# Currency Converter
Now we will begin to build a simple/small unit converter. Here we will learn about `enums`.
*/

// Swift Enums are super powerful because they can have functions associated their type:
enum DigitalStorage: Int {
	case bit = 1
	case byte = 8
	case kilobit = 1000
	case kilobyte = 8000
	case megabit = 1_000_000
	case megabyte = 8_000_000
	case gigabit = 1_000_000_000
	case gigabyte = 8_000_000_000

	func convert(amount: Float, to unit: DigitalStorage) -> Float {
		return amount * Float(self.rawValue) / Float(unit.rawValue)
	}
}

// This is how you would instantiate an enum case:
DigitalStorage.gigabit

// Here is how you would we would do some conversions:
DigitalStorage.gigabit.convert(amount: 2, to: .bit)
DigitalStorage.gigabyte.convert(amount: 4, to: .gigabit)
DigitalStorage.gigabyte.convert(amount: 5, to: .byte)

//: [👉 continue to makke app](@next)
