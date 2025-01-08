//
//  iMap.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import SwiftUI

struct iMap: View {
    let landmark: Lankmark

    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack {
                    MapView(coordinates: landmark.location)
                        .frame(height: geo.size.height / 1.5)
                        .ignoresSafeArea()

                    CircleView(image: landmark.image)
                        .offset(y: -90)
                        .padding(.bottom, -90)

                    HStack {
                        VStack(alignment: .leading) {
                            Text(landmark.name ?? "")
                                .font(.title2)

                            HStack {
                                Text(landmark.park ?? "")
                                    .textCase(.uppercase)
                                Spacer()
                                Text(landmark.state ?? "")
                            }
                            .font(.footnote)
                            .foregroundStyle(Color.secondary)
                        }
                    }
                    .padding()

                    Divider()
                        .padding(.horizontal)

                    HStack {
                        VStack(alignment: .leading) {
                            Text("About")
                                .textCase(.uppercase)
                                .font(.title3)

                            Text(landmark.description ?? "")
                                .font(.footnote)
                                .foregroundStyle(Color.secondary)
                        }
                    }
                    .padding()

                    Spacer()
                }
            }
        }
    }

    init(_ landmark: Lankmark) {
        self.landmark = landmark
    }
}

#Preview {
    iMap(Lankmark(
        name: "Test",
        category: "Test",
        city: "Test",
        state: "Test",
        id: 123,
        park: "Test",
        coordinates: Coordinates(longitude: 123, latitude: 456),
        description: "Test",
        imageName: "Test")
    )
}
