//
//  Ofertas.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 29/08/2022.
//

import SwiftUI

struct Ofertas: View {
    var card: CardOferta
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color("Background"))
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(spacing:0) {
                    Image(card.image)
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .shadow(color: Color.white.opacity(0.3), radius: 10, x: 0, y: 3)
                        .padding()
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(card.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Decoracion"))
                        
                        Text("Descripción")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(Color("Decoracion"))
                        
                        Text(card.subtitule)
                            .font(.subheadline)
                            .foregroundColor(Color("Decoracion"))
                        
                        Divider().overlay(Color(.white)).frame(width: 350).opacity(0.8)
                        
                        Text("Norma de apliacacion para los beneficios")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Decoracion"))
                        
                        VStack(alignment: .leading, spacing: 6)  {
                            Text("- Los beneficios rigen desde el 24 de junio de 2016.")
                            Text("- Los beneficios/ reservas para todas las unidades Turísticas IOSFA, se tramitarán según las condiciones generales de Reservas Hoteleras vigentes para IOSFA, debiendo canalizarse las mismas a través de la Obra Social del requirente.")
                            Text("- Los beneficios NO serán acumulativos, NI fraccionables.")
                            Text("- La reserva deberá realizarse con treinta (30) días de anticipación y estará sujeta a disponibilidad y apertura de los hoteles.")
                        }
                        .font(.subheadline)
                        .foregroundColor(Color("Decoracion"))
                        .multilineTextAlignment(.leading)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                }
                //Navigation
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
            
        }
    }
}


struct Ofertas_Previews: PreviewProvider {
    static var previews: some View {
        Ofertas(card: cards[0])
    }
}
