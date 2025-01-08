//
//  MissionView.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import SwiftUI

struct MissionView: View {
    struct CrewMember {
        let role: String
        let astronaut: Astronaut
    }

    let mission: Mission
    let crew: [CrewMember]

    var body: some View {
        GeometryReader { geo in
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 30) {
                    HStack {
                        Spacer()
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: geo.size.width * 0.6)
                            .padding(.top)
                        Spacer()
                    }

                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.lightBackground)
                        .padding(.horizontal)

                    VStack(alignment: .leading) {
                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                            .foregroundColor(.white)

                        Text(mission.description)
                            .foregroundColor(.white.opacity(0.5))
                    }
                    .padding(.horizontal)

                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.lightBackground)
                        .padding(.horizontal)

                    Text("Crew Members")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                        .foregroundColor(.white)
                        .padding(.horizontal)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(crew, id: \.role) { crewMember in
                                NavigationLink {
                                    Astronautview(astronaut: crewMember.astronaut)
                                } label: {
                                    HStack {
                                        Image(crewMember.astronaut.id)
                                            .resizable()
                                            .frame(width: 104, height: 72)
                                            .clipShape(Capsule())
                                            .overlay {
                                                Capsule()
                                                    .strokeBorder(.white, lineWidth: 1)
                                            }

                                        VStack(alignment: .leading) {
                                            Text(crewMember.astronaut.name)
                                                .foregroundColor(.white)
                                                .font(.headline)
                                            Text(crewMember.role)
                                                .foregroundColor(.secondary)
                                                .font(.subheadline)
                                        }
                                    }
                                    .padding(10)
                                    .background(Color.darkBackground.opacity(0.7))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom)
            }
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.darkBackground)
    }

    init(mission: Mission, astronauts: [String: Astronaut]) {
        self.mission = mission
        self.crew = mission.crew.map({ member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            } else {
                return CrewMember(role: "", astronaut: Astronaut(id: "", name: "", description: ""))
            }
        })
    }
}

#Preview {
    MissionView(
        mission: Mission(
            id: 1,
            launchDate: Date.now,
            crew: [
                Mission.CrewRole(name: "Test", role: "Custom"),
                Mission.CrewRole(name: "Test", role: "Custom"),
                Mission.CrewRole(name: "Test", role: "Custom")
            ],
            description: "Custom Description"
        ),
        astronauts: ["Custom" : Astronaut(id: "12", name: "Test", description: "Test")]
    )
}
