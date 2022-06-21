//
//  SecondView.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 18/06/2022.
//

import SwiftUI

struct SecondView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    ForEach(information) { info in
                        withAnimation {
                            NavigationLink(destination: SecondDetail()) {
                                SecondItem(info: info)
                            }
                        }
                    }
            
                }
            }
            .background(.ultraThinMaterial)
            .navigationBarTitle("Centros Recreativos")
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

struct SecondView_Previews: PreviewProvider {
    
    static var previews: some View {
        SecondView()
        
    }
}
