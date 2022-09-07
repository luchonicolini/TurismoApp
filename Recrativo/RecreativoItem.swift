//
//  RecreativoItem.swift
//  DonatelloProject (iOS)
//
//  Created by Luciano Nicolini on 25/08/2022.
//

import SwiftUI

struct RecreativoItem: View {
    var info: CardRecreativo
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image(info.image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .shadow(color: Color.white.opacity(0.3),
                        radius: 5, x: 5, y: 0)
           
            VStack(alignment: .leading,spacing: 0) {
                Text(info.name)
                    .font(.title2).bold()
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color("Decoracion"))
              
                Text(info.city)
                    .font(.subheadline)
                    .foregroundColor(Color("Decoracion"))
                    
            }
        }
        .padding()
    }
}

struct RecreativoItem_Previews: PreviewProvider {
    static var previews: some View {
        RecreativoItem(info: information[1])
            .preferredColorScheme(.dark)
    }
}
