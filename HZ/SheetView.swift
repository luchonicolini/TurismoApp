//
//  SheetView.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 22/06/2022.
//

import SwiftUI

struct SheetView: View {
    var card: Card
    @Binding var isPresented: Bool
    var body: some View {
        ScrollView {
            VStack {
                Image(card.image)
                    .resizable()
                    .scaledToFit()
                    .clipped()
            }
        }
    }
    var backButton: some View {
        Button {
            //dismiss()
            isPresented = false
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
            }
        }
}
    struct SheetView_Previews: PreviewProvider {
        static var previews: some View {
            SheetView(card: cards[0], isPresented: .constant(false))
        }
    }

    
    
