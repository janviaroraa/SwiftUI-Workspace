//
//  Lankmark.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Lankmark: Hashable, Codable {
    let name: String?
    let category: String?
    let city: String?
    let state: String?
    let id: Int?
    let park: String?
    let coordinates: Coordinates?
    let description: String?
    let imageName: String?

    var image: Image {
        Image(imageName ?? "")
    }

    var location: CLLocationCoordinate2D {
        .init(latitude: coordinates?.latitude ?? 0.0, longitude: coordinates?.longitude ?? 0.0)
    }
}

struct Coordinates: Hashable, Codable {
    let longitude: Double?
    let latitude: Double?
}
