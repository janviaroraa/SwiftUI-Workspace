//
//  Expenses.swift
//  WeSplit
//
//  Created by Janvi Arora on 06/01/25.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() {
        didSet {
            if let data = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(data, forKey: "Expenses")
            }
        }
    }

    init() {
        if let savedItems = UserDefaults.standard.value(forKey: "Expenses") as? Data {
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                items = decodedItems
                return
            }
        }

        items = []
    }
}
