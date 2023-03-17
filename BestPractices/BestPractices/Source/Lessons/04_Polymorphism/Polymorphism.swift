/*
 * POLYMORPHISM
 *
 * Polymorphism in OOP refers to the ability of objects of different classes to be used interchangeably, while still
 * providing the expected behavior.
 *
 * In this example, we will create a class hierarchy of movie characters. The base class is called Character and has
 * a method called speak(). We will then create two subclasses of Character: Gandalf and Frodo. Both Gandalf and Frodo
 * classes will override the speak() method, providing their own implementation of the method.
 *
 * The main function will create an array of Character objects, containing both Gandalf and Frodo objects. We will then
 * loop through the array, calling the speak() method on each object. Since each object in the array is a subclass of
 * Character, we can call the same method on all of them, but each object will provide its own implementation of the
 * method.
*/

/**
 Character class
 */
protocol Character
{
	var name: String { get }
	func speak()
}


protocol Actor
{
	func act()
}


/**
 Gandalf class, subclass of Character
 */
class Gandalf: Character, Actor
{
	func speak()
	{
		print("You shall not pass! I am \(name), the Grey Wizard.")
	}

	private(set) var name: String = "Gandalf"


	func act()
	{
		print("Acting as Gandalf")
	}
}


/**
  Frodo class, subclass of Character
 */
class Frodo: Character, Actor
{
	func speak()
	{
		print("I will take the ring to Mordor. My name is \(name).")
	}


	private(set) var name: String = "Frodo"


	func act()
	{
		print("Acting as Frodo")
	}
}


class Polymorphism
{
	// Output:
	// You shall not pass! I am Gandalf, the Grey Wizard.
	// I will take the ring to Mordor. My name is Frodo.
	static func test()
	{
		print("---------- Polymorphism Test ----------")

		// create an array of Character objects, containing both Gandalf and Frodo objects
		let characters: [Character] = [Gandalf(), Frodo()]

		// loop through the array, calling the speak() method on each object
		for character in characters
		{
			character.speak()
		}
	}
}
