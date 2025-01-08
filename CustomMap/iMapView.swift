//
//  iMapView.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import SwiftUI

struct MapCell: View {
    let image: Image
    let name: String

    var body: some View {
        HStack {
            image
                .resizable()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            Text(name)
        }
    }
}

struct iMapView: View {
    let data: [Lankmark] = Bundle.main.decode("landmarkData")

    var body: some View {
        NavigationView {
            List(data, id: \.id) { landmark in
                NavigationLink {
                    iMap(landmark)
                } label: {
                    MapCell(image: landmark.image, name: landmark.name ?? "")
                }
            }
            .navigationTitle("iMap")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    iMapView()
}
