/**
 * ENCAPSULATION
 *
 * Encapsulation is a fundamental concept in object-oriented programming that involves bundling data and methods
 * that operate on that data within a single unit, or class. Encapsulation helps to protect the data from external
 * interference and misuse, and provides a clear interface for interacting with the class.
 *
 * Encapsulation uses access modifiers like public, private, fileprivate, etc. to control the access to properties
 * and methods.
 */

// ------------------------------------------------------------------------------------------------
// Bad example: No encapsulation
// ------------------------------------------------------------------------------------------------

/**
 A class representing a person.
 */
class Susan
{
	var name: String
	var age: Int


	init(name: String, age: Int)
	{
		self.name = name
		self.age = age
	}
}


// ------------------------------------------------------------------------------------------------
// Good example: Encapsulation
// ------------------------------------------------------------------------------------------------

/**
 A class representing a person.
 */
class Cherrie
{
	private var name: String
	private var age: Int


	init(name: String, age: Int)
	{
		self.name = name
		self.age = age
	}

	// Getter method for the name property
	func getName() -> String
	{
		return name
	}


	// Setter method for the age property
	@discardableResult func setAge(age: Int) -> Int
	{
		self.age = age < 0 ? self.age : age
		return self.age
	}
}


// ------------------------------------------------------------------------------------------------
// Test
// ------------------------------------------------------------------------------------------------

class EncapsulationTest
{
	static func test()
	{
		print("---------- Encapsulation Test ----------")

		// Create an instance of Susan
		let susan = Susan(name: "Susan", age: 25)

		// Update the age property of Susan directly
		susan.age = -10

		// This can cause problems, as age should not be negative
		print(susan.age) // Output: -10

		// Create an instance of Rachel
		let cherrie = Cherrie(name: "Cherrie", age: 26)

		// Attempt to update the age property of Rachel directly
		// This will not compile, as age is private
		//cherrie.age = -10

		// Update the age property of Rachel using the setAge method
		// This will clamp the age property to a positive value, as age should not be negative
		cherrie.setAge(age: -10)

		// Get the name and age properties of Rachel using their getter methods
		print(cherrie.getName()) // Output: Cherrie
		print(cherrie.setAge(age: 27)) // Output: 27
	}
}
