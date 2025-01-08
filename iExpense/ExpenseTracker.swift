//
//  ExpenseTracker.swift
//  WeSplit
//
//  Created by Janvi Arora on 06/01/25.
//

import SwiftUI

struct ExpenseTracker: View {
    @StateObject private var expenses = Expenses()
    @State private var showingAddExpense = false

    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.title3)
                            if !item.type.isEmpty {
                                Text(item.type)
                                    .font(.caption)
                            }
                        }

                        Spacer()

                        Text(item.amount, format: .currency(code: "USD"))
                            .font(.title2)
                    }
                }.onDelete(perform: delete)
            }
            .navigationTitle("iExpense Tracker")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddExpense(expenses: expenses)
            }
        }
    }

    func delete(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ExpenseTracker()
}
