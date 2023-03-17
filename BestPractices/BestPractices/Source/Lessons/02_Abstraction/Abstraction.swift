/**
 * ABSTRACTION
 *
 * Abstraction is a fundamental principle of object-oriented programming that promotes separation of implementation
 * details from the external interface of a class. This means that a class exposes only the necessary information to
 * the outside world while hiding the complexity of its internal implementation.
 *
 * Abstraction is important because it allows developers to create more modular and maintainable code, reduces code
 * complexity, and improves the readability of code. It also allows developers to change the internal implementation
 * of a class without affecting the external interface of the class.
 *
 * For example, imagine a banking application that needs to display account information to users. By abstracting the
 * account details behind a class, developers can hide the complexities of the account calculations, interest rate
 * calculations, and other backend operations from the users, while providing only the relevant account details to
 * the user interface.
 *
 * Good examples of abstraction in code include creating interfaces that define a set of behaviors that a class must
 * implement, rather than providing direct access to implementation details. Bad examples of abstraction include
 * exposing implementation details in public methods or fields, which can lead to coupling between different parts
 * of the code and increase the likelihood of bugs and maintenance issues.
 */

// ----------------------------------------------------------------------------------------------------
// Bad Example: without abstraction
// ----------------------------------------------------------------------------------------------------

/**
 * The class Person1 is responsible for handling the details of how to perform actions.
 * This makes the class difficult to change, and its responsibilities are unclear.
 */
class Person1
{
	var name: String


	init(name: String)
	{
		self.name = name
	}


	func eat()
	{
		print("\(name) is eating.")
	}


	func sleep()
	{
		print("\(name) is sleeping.")
	}


	func haveFun()
	{
		print("\(name) is having fun.")
	}
}


// ----------------------------------------------------------------------------------------------------
// Good Example: with abstraction
// ----------------------------------------------------------------------------------------------------

/**
 * The class Person2 has been simplified and abstracted.
 * The class now focuses on what actions are possible, instead of how they are done.
 * This makes the class easier to change and improves its readability.
 */
protocol Actionable
{
	func performAction()
}


class EatAction: Actionable
{
	func performAction()
	{
		print("Eating")
	}
}

class SleepAction: Actionable
{
	func performAction()
	{
		print("Sleeping")
	}
}

class HaveFunAction: Actionable
{
	func performAction()
	{
		print("Having fun")
	}
}


class Person2
{
	var name: String
	var action: Actionable


	init(name: String, action: Actionable)
	{
		self.name = name
		self.action = action
	}


	func performAction()
	{
		action.performAction()
	}
}


// ------------------------------------------------------------------------------------------------
// Test
// ------------------------------------------------------------------------------------------------

class AbstractionTest
{
	static func test()
	{
		print("---------- Abstraction Test ----------")

		let jane = Person1(name: "Jane")
		jane.eat()
		jane.sleep()
		jane.haveFun()

		let jenny = Person2(name: "Jenny", action: EatAction())
		jenny.performAction()

		let sara = Person2(name: "Sara", action: SleepAction())
		sara.performAction()
	}
}
