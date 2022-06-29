//
//  SwiftUIView.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 21/06/2022.
//

import SwiftUI

struct Benefit: View {
    //@State private var showingSheet = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Todos los afiliados podrán disfrutar de los siguientes beneficios")
                        .font(.title2)
                        .foregroundColor(.primary)
                        .padding(.horizontal,20)
                    SVideoPlayer()
                        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                        .padding()
                    
                    Divider().frame(width: 350)
                        .padding()
                    Text("Beneficio de vigencia anual (temporada baja o alta): este incluye el Beneficio del 10% para Retirados, Jubilados y Pensionados, como también por Viaje de Bodas")
                        .font(.subheadline)
                        .padding(.horizontal,20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack() {
                            ForEach(cards) { index in
                                NavigationLink(destination: SheetView(card: index)) {
                                    CardView(card: index)
                                    
                                }
                            }
                        }
                        //
                        .padding()
                    }
                    Divider().frame(width: 350)
                        .padding()
                    
                    Text("Beneficio vigente desde 19 de abril de 2022 (temporada baja): este incluye beneficio por 25 o 30 años de servicio, por cumpleaños de 65 años de edad y aniversario de casados.")
                        .font(.subheadline)
                        .padding(.horizontal,20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack() {
                            ForEach(cardss) { index in
                                NavigationLink(destination: ViewTwo(card: index)) {
                                    CardView(card: index)
                                    
                                }
                            }
                        }
                        .padding()
                    }
                    
                }
            }
            .navigationBarTitle("Beneficios")
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

struct Benefit_Previews: PreviewProvider {
    static var previews: some View {
        Benefit()
    }
}
