//
//  Formatting.swift
//  Budget
//
//  Created by Matteo Manferdini on 06/12/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import Foundation

extension Int {
	var currencyFormat: String {
		let formatter = NumberFormatter()
		formatter.numberStyle = .currency
		return formatter.string(from: NSNumber(value: Float(self) / 100 )) ?? ""
	}
}

extension Date {
	var transactionFormat: String {
		let formatter = DateFormatter()
		formatter.dateStyle = .medium
		return formatter.string(from: self)
	}
}

extension Transaction.Category {
	var name: String {
		rawValue.capitalized
	}
	
	var imageName: String {
		switch self {
		case .groceries: return "cart.fill"
		case .income: return "hand.thumbsup.fill"
		case .utilities: return "phone.fill"
		}
	}
}
