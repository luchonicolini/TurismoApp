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
            Text(categoryName)
                           .font(.headline)
                           .padding(.leading, 15)
                           .padding(.top, 5)
            
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            DestinoDetail(landmark: landmark)
                        } label: {
                            DestinoItem(landmark: landmark)
                        }
                        //.padding(.top,10)
                        .padding(.horizontal,-2)
                    }
                }
            }
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
