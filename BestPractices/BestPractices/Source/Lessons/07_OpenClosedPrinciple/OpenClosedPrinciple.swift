/**
 * Open-Closed Principle
 *
 * The Open-Closed Principle (OCP) states that software entities (classes, modules, functions, etc.) should be open for
 * extension but closed for modification. This means that the behavior of the entity can be extended without modifying
 * its source code.
 *
 * To demonstrate this principle in Swift, let's consider an example of a Shape protocol with a single method area() that
 * calculates the area of the shape. We want to extend the functionality of Shape without modifying its source code.
 */

import Foundation


// First, let's define the Shape protocol:

protocol Shape
{
	func area() -> Double
}


// Now, let's create a concrete implementation of Shape for a rectangle:

class Rectangle: Shape
{
	var width: Double
	var height: Double


	init(width: Double, height: Double)
	{
		self.width = width
		self.height = height
	}


	func area() -> Double
	{
		return width * height
	}
}


// Next, we want to extend the functionality of Shape by adding support for calculating the perimeter of the shape.
// We can achieve this by creating a separate protocol called PerimeterCalculatable and making Rectangle conform to it:

protocol PerimeterCalculatable
{
	func perimeter() -> Double
}


extension Rectangle: PerimeterCalculatable
{
	func perimeter() -> Double
	{
		return 2 * (width + height)
	}
}


// By doing this, we have extended the behavior of Rectangle to calculate its perimeter without modifying its source code.
//
// Now, let's create another shape called Circle and extend its functionality without modifying its source code. We can
// create a separate protocol called DiameterCalculatable and make Circle conform to it:

class Circle: Shape
{
	var radius: Double


	init(radius: Double)
	{
		self.radius = radius
	}


	func area() -> Double
	{
		return Double.pi * pow(radius, 2)
	}
}


protocol DiameterCalculatable
{
	func diameter() -> Double
}


extension Circle: DiameterCalculatable
{
	func diameter() -> Double
	{
		return radius * 2
	}
}


// By doing this, we have extended the behavior of Circle to calculate its diameter without modifying its source code.
//
// This example demonstrates the Open-Closed Principle by allowing us to extend the behavior of Shape without modifying
// its source code.


class OpenClosedPrinciple
{
}
