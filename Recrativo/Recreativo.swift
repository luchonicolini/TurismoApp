//
//  Recreativos.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 29/08/2022.
//

import SwiftUI

struct Recreativo: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("Background").ignoresSafeArea(.all)
                ScrollView(.vertical,showsIndicators: false) {
                    VStack(spacing: 0) {
                        Image("logo").resizable().aspectRatio(contentMode: .fit).frame(width: 90).padding(.vertical, 11.0)
                        
                        Divider().overlay(Color(.black)).frame(height: 1).opacity(0.4)
                        
                        DateView(launcher: "Centros Recreativos")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(.horizontal, 20)
                        
                        ForEach(information) { info in
                            NavigationLink(destination: RecrativoDetail(scrum: info)) {
                                RecreativoItem(info: info)
                                
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

struct Recreativo_Previews: PreviewProvider {
    static var previews: some View {
        Recreativo()
    }
}

