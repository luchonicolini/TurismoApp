//
//  DestinoRow.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 29/08/2022.
//

import SwiftUI

struct DestinoRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName.uppercased())
                .font(.headline)
                //.gradientForeground(colors: [.orange,.red])
                .padding(.leading, 15)
                .padding(.top, 5)
            
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { landmark in
                        NavigationLink {
                            DestinoDetail(landmark: landmark)
                        } label: {
                            DestinoItem(landmark: landmark)
                        }
                        
                    }
                }
            }
            .frame(height: 185)
        }
    }
}


struct DestinoRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        DestinoRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(4))
        )
    }
}


extension View {
    public func gradientForeground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: .init(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
}
