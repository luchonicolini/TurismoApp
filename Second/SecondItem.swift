//
//  SecondItem.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 19/06/2022.
//

import SwiftUI

struct SecondItem: View {
    var info: Info
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(info.image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
                .shadow(radius: 3)
                .padding()
            
            VStack(alignment: .leading,spacing: 0) {
                Text(info.name)
                    .font(.title)
                    .foregroundColor(.primary)
                    
                Text(info.city)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                    
                    
            }
            .offset(y: -28)
            .padding(.horizontal,0)
            .padding()
        }
        
    }
}

struct SecondItem_Previews: PreviewProvider {
    static var previews: some View {
        SecondItem(info: information[0])
    }
}
