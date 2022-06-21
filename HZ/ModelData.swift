//
//  Model.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 21/06/2022.
//

import Foundation

struct Card: Identifiable {
    var id = UUID()
    let name: String
    let image: String
    
}

var cards: [Card] = [
    Card(name: "name", image: "im_Turismo1"),
    Card(name: "name", image: "im_Turismo3")

]

var cardss: [Card] = [
    Card(name: "name", image: "im_beneficio2"),
    Card(name: "name", image: "im_Turismo4"),
    Card(name: "name", image: "im_Turismo5")

]
