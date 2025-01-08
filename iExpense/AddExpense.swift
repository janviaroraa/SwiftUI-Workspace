//
//  AddExpense.swift
//  WeSplit
//
//  Created by Janvi Arora on 06/01/25.
//

import SwiftUI

struct AddExpense: View {
    @ObservedObject var expenses: Expenses
    @Environment(\.dismiss) var dismiss

    @State private var name: String = ""
    @State private var type: String = ""
    @State private var amount: Double = 0
    let types = ["Business", "Personal"]

    var body: some View {
        NavigationView {
            Form {
                TextField("Enter the expense name", text: $name)

                Picker("Expense type", selection: $type) {
                    ForEach(types, id: \.self) { type in
                        Text(type)
                    }
                }

                TextField("Enter the expense amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add New Expense")
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddExpense(expenses: Expenses())
}
