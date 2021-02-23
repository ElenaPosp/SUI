//
//  Landmark.swift
//  SwiftUIExample
//
//  Created by e.pospelova on 13.02.2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    let id: Int
    let name: String
    let park: String
    let state: String
    let description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude,
                               longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
