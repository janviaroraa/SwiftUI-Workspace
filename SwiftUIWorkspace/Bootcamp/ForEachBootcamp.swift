//
//  ForEachBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 01/10/23.
//

import SwiftUI

struct ForEachBootcamp: View {

    let data: [String] = ["Hello 1", "Hello 2", "Hello 3"]
    let myString = "Hello"

    var body: some View {
        VStack(spacing: 10) {
            ForEach(0..<10) { item in
                HStack {
                    Circle()
                        .stroke()
                        .frame(width: 10)
                    Text("Hello, World! \(item)")
                        .font(.title2)
                }
            }

            ForEach(data.indices) { item in
                Text("\(data[item]) : \(item)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
