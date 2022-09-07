//
//  Ofertas.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 29/08/2022.
//

import SwiftUI

struct HCard: View {
    var card: CardOferta
    
    var body: some View {
        Image(card.image)
            .renderingMode(.original)
            .resizable()
            .frame(width: 200, height: 250)
            .cornerRadius(10)
        
        
    }
}


struct HCard_Previews: PreviewProvider {
    static var previews: some View {
        HCard(card: cards[0])
        
    }
}

