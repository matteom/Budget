//
//  StateController.swift
//  Budget
//
//  Created by Matteo Manferdini on 06/12/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import Foundation

final class StateController : ObservableObject {
	@Published var account: Account = TestData.account
	
	func add(_ transaction: Transaction) {
		account.add(transaction)
	}
}

struct TestData {
	static let transactions: [Transaction] = [
		Transaction(amount: 200000, date: Date(), description: "Salary", category: .income),
		Transaction(amount: -1999, date: Date(), description: "Cellphone", category: .utilities),
		Transaction(amount: -5687, date: Date(), description: "Supermarket", category: .groceries)
	]
	
	static let account = Account(transactions: transactions)
}
