//
//  ContentView.swift
//  Shared
//
//  Created by Luciano Nicolini on 18/06/2022.
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
                       Label("Featured", systemImage: "star")
                   }
                   .tag(Tab.featured)

             Benefit()
                   .tabItem {
                       Label("List", systemImage: "list.bullet")
                   }
                   .tag(Tab.list)
           }
       }
   }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
