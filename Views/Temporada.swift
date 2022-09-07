//
//  Temporada.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 27/08/2022.
//

import SwiftUI

struct Temporada: View {
    @Environment(\.dismiss) var dismiss
    
    struct ListItemTemporada: Identifiable {
        var id = UUID()
        var tilte: String
        var description: String
        
    }
    
    
    var TemporadaInfo: [ListItemTemporada] = [
        ListItemTemporada(tilte: "La mejor gastronomía en Mar del Plata: el Hotel Antártida.", description: "IOSFA invita a sus afiliados a esta promoción exclusiva de 5 noches, la cual consta de una habitación standard, media pensión (cena) y desayuno buffet por solo $11.000 por persona. Para reservar podés comunicarte a reservas.antartida@iosfa.gob.ar, llamar al (0223) 491-5450 o al (0223) 491-5454. También por whatsapp: 2235792302."),
        ListItemTemporada(tilte: "En pleno centro comercial disfrutá del Hotel Metropol.", description: "Ubicado a pocos metros de la playa y cercano a los corredores comerciales y gastronómicos, Metropol te ofrece 4 noches en una habitación estándar, con desayuno continental de lunes a viernes por solo $3.200 por persona. Para reservar podés comunicarte a reservas.metropol@iosfa.gob.ar o al (0223) 4950050/69."),
        
        ListItemTemporada(tilte: "Otra propuesta en el corazón del centro comercial Güemes: Hotel Cóndor.", description: "A 300 metros del nuevo shopping, te ofrecemos una excelente propuesta para distintas actividades urbanas (cines, museos, espectáculos, esparcimiento). El Cóndor tiene un plan para vos que consta de una habitación estándar, con desayuno continental, de lunes a viernes (4 noches) desde $4.000 por persona. Para reservar podés comunicarte a reservas.condor@iosfa.gob.ar o llamando al (0223) 451-0037/3176."),
        
    ]
    
    var body: some View {
            ZStack(alignment: .top) {
                Color("Background").ignoresSafeArea(.all)
                List(TemporadaInfo) { info in
                    Section(header: Text(info.tilte)) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text(info.description)
                                .font(.subheadline)
                                .foregroundColor(Color("Decoracion"))
                    
                        }
                        .padding(1)
                    }
                }
            }
            .navigationBarTitle("Temporada Mardel")
        }
    }


struct Temporada_Previews: PreviewProvider {
    static var previews: some View {
        Temporada()
    }
}



/*
 
 init() {
     UITableViewHeaderFooterView.appearance().tintColor = UIColor(Color.blue)
     }
 
 Text("Estas promociones en Mar del Plata se extienden hasta el 14/07.")
 .font(.footnote)
 Text("Recordá que ya se está dando atención presencial en Paso 551 (CABA) y que pueden comunicarse al 4964-1800 (interno 4058) para reservar o realizar cualquier consulta.")
 .font(.footnote)
 */
