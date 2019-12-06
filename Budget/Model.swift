//
//  Model.swift
//  Budget
//
//  Created by Matteo Manferdini on 06/12/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import Foundation

struct Transaction: Identifiable {
	enum Category: String, CaseIterable, Identifiable {
		case income, groceries, utilities
		var id: String { rawValue }
	}
	
	let id = UUID()
	let amount: Int
	let date: Date
	let description: String
	let category: Category
}

struct Account {
	private (set) var transactions: [Transaction]
	
	var balance: Int {
		var balance = 0
		for transaction in transactions {
			balance += transaction.amount
		}
		return balance
	}
	
	mutating func add(_ transaction: Transaction) {
		transactions.append(transaction)
	}
}
