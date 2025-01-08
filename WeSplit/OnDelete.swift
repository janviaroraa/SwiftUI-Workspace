//
//  OnDelete.swift
//  WeSplit
//
//  Created by Janvi Arora on 06/01/25.
//

import SwiftUI

struct OnDelete: View {
    @State private var currentNumber = 1
    @State private var numbers = [1]

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Item \(Int($0))")
                    }.onDelete(perform: onDelete)
                }

                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("On Delete")
            .toolbar {
                EditButton()
            }
        }
    }

    func onDelete(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

#Preview {
    OnDelete()
}
