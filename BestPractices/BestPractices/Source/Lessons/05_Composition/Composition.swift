//
// Composition.swift
// BestPractices
//
// Created by Balkau, Sascha | Sascha | MTSD on 2023/03/31.
//

import Foundation

/*
 In this example, we have a ClothingItem class that serves as the base class for other clothing items. We also have a Shirt and Pants class that inherit from the ClothingItem class.

However, instead of inheriting from ClothingItem, we could have used composition to create an Outfit class that is composed of a Shirt and Pants object. This makes more sense because an outfit is not a type of clothing item, but rather a combination of different clothing items.

By using composition instead of inheritance, we are able to achieve a more flexible and modular design. We can easily create different outfits by combining different shirts and pants, without having to create a new class for each combination. This also allows for easier maintenance and updating of the code, as changes made to the Shirt or Pants class will not affect the Outfit class.
 */

// Base class for a clothing item
class ClothingItem
{
	let color: String
	let size: String


	init(color: String, size: String)
	{
		self.color = color
		self.size = size
	}


	func displayDetails()
	{
		print("Color: \(color)\nSize: \(size)")
	}
}


// ------------------------------------------------------------------------------------------------
// Cases for Inheritance
// ------------------------------------------------------------------------------------------------

// Class for a shirt that inherits from ClothingItem
class Shirt: ClothingItem
{
	let sleeveLength: String


	init(color: String, size: String, sleeveLength: String)
	{
		self.sleeveLength = sleeveLength
		super.init(color: color, size: size)
	}


	override func displayDetails()
	{
		super.displayDetails()
		print("Sleeve length: \(sleeveLength)")
	}
}


// Class for a pants that inherits from ClothingItem
class Pants: ClothingItem
{
	let inseam: String


	init(color: String, size: String, inseam: String)
	{
		self.inseam = inseam
		super.init(color: color, size: size)
	}


	override func displayDetails()
	{
		super.displayDetails()
		print("Inseam: \(inseam)")
	}
}


// ------------------------------------------------------------------------------------------------
// Cases for Composition
// ------------------------------------------------------------------------------------------------

// Class for an outfit that is composed of a shirt and pants
class Outfit
{
	let shirt: Shirt
	let pants: Pants


	init(shirt: Shirt, pants: Pants)
	{
		self.shirt = shirt
		self.pants = pants
	}


	func displayDetails()
	{
		print("Shirt details:")
		shirt.displayDetails()
		print("\nPants details:")
		pants.displayDetails()
	}
}


class Composition
{
	static func test()
	{
		print("---------- Composition Test ----------")

		let myShirt = Shirt(color: "Blue", size: "Medium", sleeveLength: "Short")
		let myPants = Pants(color: "Black", size: "32x34", inseam: "34")

		let myOutfit = Outfit(shirt: myShirt, pants: myPants)
		myOutfit.displayDetails()
	}
}
