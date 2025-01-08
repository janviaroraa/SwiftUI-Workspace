//
//  Astronautview.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import SwiftUI

struct Astronautview: View {
    let astronaut: Astronaut

    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                    .padding([.horizontal, .bottom])

                Text(astronaut.description)
                    .padding(.horizontal)
                    .foregroundColor(.white)
            }
        }
        .navigationTitle(astronaut.name)
        .background(.darkBackground)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Astronautview(astronaut: Astronaut(id: "1", name: "Test", description: "Test"))
}
