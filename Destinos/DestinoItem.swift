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
                .frame(width: 285, height: 155)
                .cornerRadius(15)
            
            VStack(alignment: .leading){
                Text(landmark.name.uppercased())
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color("Decoracion"))
                Text(landmark.subtitule)
                    .font(.caption)
                    .foregroundColor(.secondary)
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
