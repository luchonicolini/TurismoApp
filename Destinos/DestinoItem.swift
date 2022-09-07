//
//  DestinoItem.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 29/08/2022.
//

import SwiftUI

struct DestinoItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(15)
            
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color("Decoracion"))
                Text(landmark.city)
                    .font(.caption)
                    .foregroundColor(Color("Decoracion"))
            }
        }
        .padding(.leading, 15)
    }
}

struct DestinoItem_Previews: PreviewProvider {
    static var previews: some View {
        DestinoItem(landmark: ModelData().landmarks[0])
    }
}
