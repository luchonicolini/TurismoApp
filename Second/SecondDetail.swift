//
//  SecondDetail.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 20/06/2022.
//

import SwiftUI

struct SecondDetail: View {
    var info: Info = information[0]
   
    var body: some View {
        ScrollView {
            VStack {
                Image(info.image)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(3 / 2, contentMode: .fit)
                    .shadow(radius: 15)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(info.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    HStack {
                        Text(info.subtitule)
                        Spacer()
                        Text(info.phone)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("Condiciones")
                    .font(.system(size: 23, weight: .medium, design: .rounded))
                    .foregroundColor(.primary)
                   
                    Text(info.extra)
                    .fontWeight(.light)
                    
                    VStack(alignment: .center) {
                        Text("Servicios")
                            .font(.headline)
                      
                        //No exact matches in call to initializer
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(information) { index in
                                    Text(index.image)
                                   
                                    
                                }
                            }
                        }
                    }
                  
                    
                 
                    
                    
                    
                }
                .padding()
            }
            
        }
    }
}

struct SecondDetail_Previews: PreviewProvider {
    static var previews: some View {
        SecondDetail()
    }
}

