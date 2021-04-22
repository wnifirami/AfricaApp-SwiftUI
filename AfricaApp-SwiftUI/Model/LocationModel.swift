//
//  LocationModel.swift
//  AfricaApp-SwiftUI
//
//  Created by Mac Pro Sam on 4/9/21.
//

import Foundation
import MapKit

struct NationalParcLocation: Codable, Identifiable {
    var id, name, image: String
    var latitude, longitude: Double
    
    // Computed property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}


