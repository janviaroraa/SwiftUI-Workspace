//
//  MapView.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import MapKit
import SwiftUI

struct MapView: View {
    let coordinates: CLLocationCoordinate2D
    @State private var region: MKCoordinateRegion

    var body: some View {
        Map(coordinateRegion: $region)
    }

    init(coordinates: CLLocationCoordinate2D) {
        self.coordinates = coordinates
        region = MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
    }
}

#Preview {
    MapView(coordinates: CLLocationCoordinate2D(latitude: 21.8380, longitude: 21.8380))
}
