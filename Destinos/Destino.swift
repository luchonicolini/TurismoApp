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
                        
                        Divider().overlay(Color(.black)).frame(height: 1).opacity(0.4)
                        
                        DateView(launcher: "Nuestos Destinos")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(.horizontal, 20)
                        
                        VStack {
                            ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                                DestinoRow(categoryName: key, items: modelData.categories[key]!)
                                
                                Divider().overlay(Color(.black)).frame(width: 350).opacity(0.4)
                                    
                            }
                        }
                        
                        
                        
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
