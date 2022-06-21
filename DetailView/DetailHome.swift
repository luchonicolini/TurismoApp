//
//  DetailHome.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 18/06/2022.
//

import SwiftUI

struct DetailHome: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            GeometryReader { reader in
                landmark.image
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(3 / 2, contentMode: .fit)
                    .shadow(radius: 15)
            }
            .frame(height: 280)
            
            //2
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    .foregroundColor(.primary)
                
                HStack {
                    Text(landmark.subtitule)
                    Spacer()
                    Text(landmark.phone)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

        
                
                Divider()
                
                //5
                VStack(alignment: .leading) {
                    Text("Condiciones del Hotel")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                        .foregroundColor(.primary)
                    
                    HStack(spacing:10) {
                        Text("Horario de entrada: 14:00")
                            .font(.title3)
                            .fontWeight(.light)
                            .foregroundColor(.primary)
                            .lineLimit(nil)
                        
                        Spacer()
                        Text("Horario de Salida: 10:00")
                            .font(.title3)
                            .fontWeight(.light)
                            .foregroundColor(.primary)
                            .lineLimit(nil)
                    }
                    //6
                    Text("Descripción")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                        .foregroundColor(.primary)
                        .padding(.top, 10)
                    Text(landmark.description)
                        .fontWeight(.light)
                    
                }
            }
            .padding(.top, 25)
            .padding(.horizontal)
            .background(Color.white)
            .cornerRadius(20)
            .offset(y: -38)
            
    
            

            //map
            VStack(alignment: .leading) {
                Text("Ubicacion")
                    .font(.system(size: 23, weight: .medium, design: .rounded))
                    .foregroundColor(.primary)
                    
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(width: 360, height: 300)
                    .cornerRadius(5)
            }
            .padding(.horizontal,18)
            .offset(y: -25)
        
        }
        .background(Color.white)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailHome_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        DetailHome(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}



