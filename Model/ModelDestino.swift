//
//  ModelDestino.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 29/08/2022.
//

import Foundation

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
        case sierras = "Sierras de Cordoba"
        case lakes = "Mar del Plata"
        case rivers = "Bariloche"
        case mountains = "Buenos Aires"
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    
    
    }
}
