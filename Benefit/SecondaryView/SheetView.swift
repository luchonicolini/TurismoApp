//
//  SheetView.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 22/06/2022.
//

import SwiftUI

struct SheetView: View {
    
    var card: Card
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                Image(card.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .frame(width: 380)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 3)
                    
                
                VStack(alignment: .leading, spacing: 8){
                    
                    Text(card.name)
                        .font(.largeTitle).bold()
                        .foregroundColor(.primary)
                    
                    Text("Descripción")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                        .foregroundColor(.primary)
                    Text(card.subtitule)
                        .foregroundColor(.primary)
                        
                    
                
                    Divider()
                    
                    Text("Norma de apliacacion para los beneficios")
                        .font(.title2).bold()
                        .foregroundColor(.primary)
                    
                    VStack(alignment: .leading) {
                        Text("- Los beneficios rigen desde el 24 de junio de 2016.")
                        Text("- Los beneficios/ reservas para todas las unidades Turísticas IOSFA, se tramitarán según las condiciones generales de Reservas Hoteleras vigentes para IOSFA, debiendo canalizarse las mismas a través de la Obra Social del requirente.")
                        Text("- Los beneficios NO serán acumulativos, NI fraccionables.")
                        Text("- La reserva deberá realizarse con treinta (30) días de anticipación y estará sujeta a disponibilidad y apertura de los hoteles.")
                    }
                    .multilineTextAlignment(.leading)
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
               
            }
            
            
        }
        .navigationBarTitleDisplayMode(.inline)
        //.ignoresSafeArea(edges: .all)
        
        
    }
}


struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(card: cards[0])
        SheetView(card: cards[1])
        
    }
}





