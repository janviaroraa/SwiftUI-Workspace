//
//  CustomScroll.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import SwiftUI

struct CustomScroll: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(0..<100) { val in
                    Text("Without Scroll Bar: \(val)")
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct PushingView: View {
    var body: some View {
        NavigationView {
            List(0..<10) { row in
                NavigationLink {
                    Text("Detail Screen for Row No. \(row + 1)")
                } label: {
                    Text("Row No. \(row + 1)")
                        .padding()
                }
            }
            .navigationBarTitle("Pushing View")
        }
    }
}

struct User1: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let pin: Int
}

struct CodableExample: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
                {
                    "name": "Janvi Arora",
                    "address": {
                        "street": "Lane 24",
                        "pin": 1234
                    }
                }
            """

            let data = Data(input.utf8)
            let decodedData = try? JSONDecoder().decode(User1.self, from: data)
            print(decodedData?.address.pin ?? "No pin")
        }
    }
}

struct GridView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80))
    ]
    var body: some View {
        VStack(spacing: 30) {
            ScrollView {
                LazyVGrid(columns: layout, alignment: .leading) {
                    ForEach(0..<1000) { item in
                        Text("Item \(item)")
                    }
                }
            }

            ScrollView(.horizontal) {
                LazyHGrid(rows: layout) {
                    ForEach(0..<1000) { item in
                        Text("Item \(item)")
                    }
                }
            }
        }
    }
}

#Preview {
    GridView()
}
