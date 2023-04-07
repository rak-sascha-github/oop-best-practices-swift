//
// SingleResponsibility.swift
// BestPractices
//
// Created by Balkau, Sascha | Sascha | MTSD on 2023/03/31.
//

import Foundation


struct Payment
{
}


// Example class with multiple responsibilities
class PaymentProcessor1
{
	var payment: Payment


	init(payment: Payment)
	{
		self.payment = payment
	}


	func processPayment()
	{
		// process the payment
	}


	func sendPaymentConfirmationEmail()
	{
		// send a payment confirmation email to the user
	}


	func updatePaymentStatus()
	{
		// update the payment status in the database
	}
}


// Example of refactored class using Single Responsibility
class PaymentProcessor2
{
	var payment: Payment


	init(payment: Payment)
	{
		self.payment = payment
	}


	func processPayment()
	{
		// process the payment
	}
}


class PaymentConfirmationEmailSender
{
	func sendPaymentConfirmationEmail(payment: Payment)
	{
		// send a payment confirmation email to the user
	}
}


class PaymentStatusUpdater
{
	func updatePaymentStatus(payment: Payment)
	{
		// update the payment status in the database
	}
}


class SingleResponsibility
{
}
