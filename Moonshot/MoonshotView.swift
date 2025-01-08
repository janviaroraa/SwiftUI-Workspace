//
//  MoonshotView.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import SwiftUI

struct MoonshotView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts")
    let missions: [Mission] = Bundle.main.decode("missions")

    let columns = [GridItem(.adaptive(minimum: 150))]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                     ForEach(missions) { mission in
                         NavigationLink {
                             MissionView(mission: mission, astronauts: astronauts)
                         } label: {
                             VStack {
                                 Image(mission.image)
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 100, height: 100)
                                     .padding()

                                 VStack {
                                     Text(mission.displayName)
                                         .font(.headline)
                                         .foregroundColor(.white)

                                     Text(mission.formattedLaunchData )
                                         .font(.caption)
                                         .foregroundColor(.white.opacity(0.5))
                                 }
                                 .padding()
                                 .frame(maxWidth: .infinity)
                                 .background(.lightBackground)
                             }
                             .clipShape(RoundedRectangle(cornerRadius: 10))
                             .overlay {
                                 RoundedRectangle(cornerRadius: 10)
                                     .stroke(.lightBackground)
                             }
                         }
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle("MoonShot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    MoonshotView()
}
