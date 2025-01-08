//
//  ExpenseItem.swift
//  WeSplit
//
//  Created by Janvi Arora on 06/01/25.
//

import Foundation

// Identifiable means this struct can be identified uniquely with the value `id`.
struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
