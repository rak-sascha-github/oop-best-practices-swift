//
//  ViewController.swift
//  BestPractices
//
//  Created by Balkau, Sascha | Sascha | MTSD on 2023/03/17.
//

import UIKit


class ViewController: UIViewController
{
	override func viewDidLoad()
	{
		super.viewDidLoad()
		// Do any additional setup after loading the view.

		EncapsulationTest.test()
		AbstractionTest.test()
		LooseCoupling.test()
		Polymorphism.test()
		Composition.test()
	}
}
