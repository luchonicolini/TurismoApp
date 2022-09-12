//
//  Destino.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 29/08/2022.
//

import SwiftUI

struct Destino: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("Background").ignoresSafeArea(.all)
                ScrollView(.vertical,showsIndicators: false) {
                    VStack(spacing: 0) {
                        Image("logo").resizable().aspectRatio(contentMode: .fit).frame(width: 90).padding(.vertical, 11.0)
                        
                        Divider().overlay(Color("Decoracion")).frame(height: 1).opacity(0.4)
                        
                        DateView(launcher: "Nuestros destinos")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 16) {
                            ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                                DestinoRow(categoryName: key, items: modelData.categories[key]!)
                                    
                                Divider().overlay(Color("Decoracion")).frame(width: 350).opacity(0.4)
                                
                            }
                        }
                        .padding(10)
                    }
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct Destino_Previews: PreviewProvider {
    static var previews: some View {
        Destino()
            .environmentObject(ModelData())
    }
}


/*
 LinearGradient(gradient: .init(colors: [.orange,.red]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
 */
