//
//  HomeView.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 18/06/2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var modelData: ModelData
   
    var body: some View {
        NavigationView {
               ScrollView {
                   VStack(alignment: .leading,spacing: 0) {
                       Text("Nuestros Alojamientos".uppercased())
                           .sectionTitleModifier()
                       
                       ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                           HomeRow(categoryName: key, items: modelData.categories[key]!)
                           Divider().frame(width: 350)
                               .padding()
                               
                       }
                   }
               }
            
               .background(.ultraThinMaterial)
               .onAppear {
                   UITableView.appearance().separatorStyle = .none
               }
               .navigationBarTitle("Nuestros Destinos")
               .toolbar {
                   ToolbarItem(placement: .principal) {
                       HStack {
                           Image("logo")
                               .resizable()
                               .scaledToFit()
                               .frame(width: 90, height: 30, alignment: .center)
                       }
                   }
               }
           }
       }
   }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ModelData())
    }
}
