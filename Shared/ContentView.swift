//
//  ContentView.swift
//  Shared
//
//  Created by Luciano Nicolini on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
   
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }.tag(Tab.featured)
            
            Destino()
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }.tag(Tab.list)
            
            Recreativo()
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
        }
        .accentColor(.orange)
    }
   
}
                        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
