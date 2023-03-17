/**
 * LOOSE COUPLING
 *
 * Example demonstrating the benefits of loose coupling by using dependency injection in OOP.
 *
 * In this example, we have a class called `Teacher` that depends on a protocol called `TeachingSubject`, which is implemented
 * by two classes: `Math` and `English`. By using dependency injection to provide the `Teacher` with an instance of
 * `TeachingSubject`, we achieve loose coupling and make the `Teacher` class more flexible and reusable.
 */


/**
 Protocol for subjects.
 */
protocol TeachingSubject
{
	func teach()
}

/**
 Math class implementing Subject protocol.
 */
class Math: TeachingSubject
{
	func teach()
	{
		print("Teaching math")
	}
}

/**
 English class implementing Subject protocol.
 */
class English: TeachingSubject
{
	func teach()
	{
		print("Teaching English")
	}
}


/**
 Teacher class with dependency injection.
 */
class Teacher
{
	var subject: TeachingSubject


	init(subject: TeachingSubject)
	{
		self.subject = subject
	}


	func teach()
	{
		subject.teach()
	}
}


// ------------------------------------------------------------------------------------------------
// Bad example: tight coupling
// ------------------------------------------------------------------------------------------------

/**
 * In the bad example, we create a `Teacher` object and instantiate a `Math` object inside the `Teacher` class itself,
 * using tight coupling. This makes the `Teacher` class less flexible and harder to reuse, since we cannot easily swap
 * out the `Math` object for another object that implements the `Subject` protocol.
 */
class BadTeacher
{
	var math = Math()


	func teach()
	{
		math.teach()
	}


	func test()
	{
		let badTeacher = BadTeacher()
		badTeacher.teach() // Output: "Teaching math"
	}
}



// ------------------------------------------------------------------------------------------------
// Good example: injecting object into class
// ------------------------------------------------------------------------------------------------

/**
 * In the good example, we create a `Teacher` object and inject an instance of `Math` into it, and then we call the
 * `teach()` method. This demonstrates how we can easily swap out the `Math` object for an `English` object or any
 * other object that implements the `Subject` protocol, without having to modify the `Teacher` class itself.
 */
class GoodTeacher
{
	func test()
	{
		let math = Math()
		let teacher1 = Teacher(subject: math)
		teacher1.teach() // Output: "Teaching math"

		// Good example - injecting English object into Teacher class
		let english = English()
		let teacher2 = Teacher(subject: english)
		teacher2.teach() // Output: "Teaching English"
	}
}


class LooseCoupling
{
	static func test()
	{
		print("---------- Loose Coupling Test ----------")

		BadTeacher().test()
		GoodTeacher().test()
	}
}
