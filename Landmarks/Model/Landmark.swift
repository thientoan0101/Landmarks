//
//  Landmark.swift
//  Landmarks
//
//  Created by Toan Thien on 10/04/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var state: String
    var description: String
    var isFavorite: Bool
    var park: String
    var city: String
    var category: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
                    latitude: coordinates.latitude,
                    longitude: coordinates.longitude)
    }
    
    
    
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}