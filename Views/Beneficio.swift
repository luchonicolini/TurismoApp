//
//  Beneficio.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 28/08/2022.
//

import SwiftUI

struct Beneficio: View {
    var body: some View {
            ZStack() {
                Rectangle()
                    .fill(Color("Background"))
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack(spacing: 0) {
                        DateView(launcher: "Beneficios")
                            .frame(maxWidth: .infinity, alignment: .leading )
                            .padding(.top,20)
                            .foregroundColor(Color("Decoracion"))
                            .padding(.horizontal,20)
                        
                        Text("Todos los afiliados podrán disfrutar de los siguientes beneficios")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title3)
                            .foregroundColor(Color("Decoracion"))
                            .padding(.horizontal,20)
                        
                        SVideoPlayer()
                            .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 10)
                            .padding()
                        
                        Divider().overlay(Color(.black)).frame(width: 350).opacity(0.4)
                        
                       Text("(Haga click sobre cada imagen para ampliar información)")
                            .foregroundColor(Color("Decoracion"))
                            .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                SubModuloBenefiicio()
                            }
                            .padding(.horizontal,23)
                        }
                        
                        Text("Se considera Temporada Baja el periodo que abarca desde el 19/04/2022 al 04/07/2022 y desde el 15/08/2022 al 30/11/2022 inclusive.")
                            .font(.footnote)
                            .foregroundColor(Color("Decoracion"))
                            .multilineTextAlignment(.center)
                            .padding()
                             
                    }
                }
            }
    
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
  
        }
        //.overlay(BackButton(),alignment: .topTrailing)
    }



struct Beneficio_Previews: PreviewProvider {
    static var previews: some View {
        Beneficio()
    }
}


struct SubModuloBenefiicio: View {
    @State var info: CardOferta?
  
    var body: some View {
            ForEach(cards) { index in
                Button(action: {
                    info = .init(id: index.id, name: index.name, image: index.image, subtitule: index.subtitule)
                    
                }, label: {
                    HCard(card: index)
                })
                
        }
        .sheet(item: $info) { rs in
            Ofertas(card: rs)
            
        }
    }
}
    
    
