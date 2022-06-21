//
//  CardView.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 21/06/2022.
//

import SwiftUI

struct CardView: View {
    var card: Card
  
    var body: some View {
        VStack(alignment: .leading) {
        Image(card.image)
            .renderingMode(.original)
            .resizable()
            .frame(width: 200, height: 250)
            .cornerRadius(15)
        }
        .padding(.leading, 15)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cards[0])
    }
}
