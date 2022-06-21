//
//  HomeItem.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 18/06/2022.
//

import SwiftUI

struct HomeItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            landmark.image
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode:.fill)
                .frame(width:300,height:170)
                .cornerRadius(5)
                .shadow(color: Color.white.opacity(0.3),
                        radius: 5, x: 5, y: 0)
            VStack(alignment: .leading){
                Text(landmark.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                Text(landmark.city)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
            }
        }
        .padding(.leading, 15)
    }
}

struct HomeItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeItem(landmark: ModelData().landmarks[0])
    }
}

//.padding(.leading, 15)
