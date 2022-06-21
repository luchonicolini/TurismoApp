//
//  Model.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 18/06/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var subtitule: String
    var website: String
    var phone: String
    var city: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    

    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Mar del Plata"
        case rivers = "Bariloche"
        case mountains = "Buenos Aires"
        case sierras = "Sierras de Cordoba"
    }

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
