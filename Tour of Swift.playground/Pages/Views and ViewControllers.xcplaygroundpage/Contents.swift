/*:
# Views and ViewControllers
*/

// lets include our enum
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

	var name: String {
		return "\(self)"
	}
}

// Now we are going to import the UIKit Framework.
// UIKit includes all the user inerface related infrastructure to build an app.
// This is mostly things like views, view controllers, view layout, and handling touch events
import UIKit

// Here we will create our first view!
// We will give it a frame (a rectangle) so that we can see it
let view = UIView(frame:
	CGRect(
		x: 0,
		y: 0,
		width: 100,
		height: 100
	)
)
// Lets make our view red!
view.backgroundColor = .red

class MyViewController: UIViewController {
	let amount = 10

	var firstUnitIndex = 0
	var secondUnitIndex = 0

	let convertedAmountLabel = UILabel()
	let units: [DigitalStorage] = [.bit, .byte, .megabyte, .gigabit]

	override func viewDidLoad() {
		super.viewDidLoad()

		view.backgroundColor = .white

		// Create vertical Stack View
		let verticalStackView = UIStackView()
		verticalStackView.axis = .vertical

		// Create convert label
		let convertLabel = UILabel()
		convertLabel.text = "Convert:"
		verticalStackView.addArrangedSubview(convertLabel)

		// Create amount label
		let amountLabel = UILabel()
		amountLabel.text = "\(amount)"
		verticalStackView.addArrangedSubview(amountLabel)

		// Create horizontal StackView for first row of buttons
		let firstButtonStackView = UIStackView()
		firstButtonStackView.distribution = .fillProportionally

		// Add first row of unit buttons
		for (index, unit) in units.enumerated() {
			let unitButton = UIButton()
			unitButton.setTitle(unit.name, for: .normal)
			unitButton.setTitleColor(.blue, for: .normal)
			// Give button a tag
			unitButton.tag = index
			unitButton.addTarget(self, action: #selector(handleFirstUnitPressed(sender:)), for: .touchUpInside)
			firstButtonStackView.addArrangedSubview(unitButton)
		}
		verticalStackView.addArrangedSubview(firstButtonStackView)

		// Add to label
		let toLabel = UILabel()
		toLabel.text = "to"
		verticalStackView.addArrangedSubview(toLabel)

		// Create horizontal StackView for first row of buttons
		let secondButtonStackView = UIStackView()
		secondButtonStackView.distribution = .fillProportionally

		// Add second row of unit buttons
		for (index, unit) in units.enumerated() {
			let unitButton = UIButton()
			unitButton.setTitle(unit.name, for: .normal)
			unitButton.setTitleColor(.blue, for: .normal)
			// Give button a tag
			unitButton.tag = index
			unitButton.addTarget(self, action: #selector(handleSecondUnitPressed(sender:)), for: .touchUpInside)
			secondButtonStackView.addArrangedSubview(unitButton)
		}
		verticalStackView.addArrangedSubview(secondButtonStackView)

		// Add converted amount label
		verticalStackView.addArrangedSubview(convertedAmountLabel)

		// Add subviews to main view
		verticalStackView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(verticalStackView)

		// Add constraints
		NSLayoutConstraint.activate([
			verticalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			verticalStackView.topAnchor.constraint(equalTo: view.topAnchor),
			verticalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
			])

		renderConvertedAmountLabel()
	}

	@objc func handleFirstUnitPressed(sender: UIButton) {
		firstUnitIndex = sender.tag
		renderConvertedAmountLabel()
	}

	@objc func handleSecondUnitPressed(sender: UIButton) {
		secondUnitIndex = sender.tag
		renderConvertedAmountLabel()
	}

	func renderConvertedAmountLabel() {
		convertedAmountLabel.text = "\(units[firstUnitIndex].convert(amount: Float(amount), to: units[secondUnitIndex]))"
	}
}

// We are also going to import playground support here just so we can see the view controller that we have built
import PlaygroundSupport

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

//: [👉 continue to makke app](@next)
