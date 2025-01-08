//
//  CheckView.swift
//  WeSplit
//
//  Created by Janvi Arora on 03/01/25.
//

import SwiftUI

struct CheckView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 0
    @State private var tipPercentage = 10

    @FocusState private var amountIsFocused: Bool

    var payableShare: Double {
        let total = checkAmount + Double(tipPercentage) * checkAmount / 100
        return total / Double(numberOfPeople)
    }

    let tipPercentages = [0, 5, 10, 15, 20, 25]

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter the amount",
                              value: $checkAmount,
                              format: .currency(code: Locale.current.currencySymbol ?? "USD")
                    )
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)

                    Picker("Pick number of people", selection: $numberOfPeople) {
                        ForEach(2..<51) { val in
                            Text("people \(val)")
                        }
                    }
                }

                Section {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip you wish to leave?")
                }

                Section {
                    Text(payableShare, format: .currency(code: Locale.current.currencySymbol ?? "USD"))
                } header: {
                    Text("Total Amount")
                }
            }
            .navigationTitle("Check List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    CheckView()
}

/*
 @State private var checkAmount = 0.0
 var body: some View {
     Form {
         TextField("Enter the amount", text: $checkAmount)
     }
 }

 ERROR:
 Cannot convert value of type 'Binding<Double>' to expected argument type 'Binding<String>'

 REASON:
 Because TextField expects a string value, and doesn't incorporate Double value

 Soln 1:
 @State private var checkAmount = ""

 Soln 2:
 TextField("Enter the amount", value: $checkAmount, format: .currency(code: "USD"))

 Update to Soln2:
 TextField("Enter the amount", value: $checkAmount, format: .currency(code: Locale.current.currencySymbol ?? "USD"))
 */


/*
 .keyboardType(.decimalPad)

 After writing this, although the keyboard type that'll be shown to user will be number pad with decimals allowed, still they will be able to enter alphabet texts maybe by copy pasting from some other application, but as soon as they'll hit enter, SwiftUI will automatically remove the invalid characters and filter out things automatically.
 */
