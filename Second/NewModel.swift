//
//  NewModel.swift
//  Luciano (iOS)
//
//  Created by Luciano Nicolini on 18/06/2022.
//

import Foundation
import SwiftUI

struct Info: Identifiable {
    var id = UUID()
    var name: String
    let image: String
    var subtitule: String
    var phone: String
    var city: String
    var condicion: String
    var description: String
    var extra: String
    let hobbies: [String]
    
    
    
}

var information: [Info] = [ Info(name: "Campo de deportes", image: "parque", subtitule: "Av. Gral. Juan Gregorio Lemos 733", phone: "Tel:(011) 4664-6170", city: "Campo de Mayo - PCIA de Buenos Aires", condicion: "Abierto de Martes a Domingo, Lunes y feriados cerrados", description: "A sólo cincuenta minutos de la Ciudad Autónoma de Buenos Aires, usted podrá disfrutar de este excelente predio de 14 ha. Un lugar de esparcimiento, donde su frondosa arboleda hace de él un lugar ideal para pasar un agradable día al aire libre. Por mínimos aranceles podrá utilizar los quinchos abiertos con parrilla, los quinchos cerrados y calefaccionados o el salón de fiestas para cien personas. Cada afiliado podrá ingresar con seis invitados, abonando un arancel por cada uno.Se encuentra abierto de martes a domingo, tanto en invierno como en verano.", extra: "Abierto de martes a domingo de 8 a 19 hs.", hobbies: ["uno","dos"]),
    
    Info(name: "Campo de deportes", image: "parque", subtitule: "Av. Gral. Juan Gregorio Lemos 733", phone: "Tel:(011) 4664-6170", city: "Campo de Mayo - PCIA de Buenos Aires", condicion: "Abierto de Martes a Domingo, Lunes y feriados cerrados", description: "A sólo cincuenta minutos de la Ciudad Autónoma de Buenos Aires, usted podrá disfrutar de este excelente predio de 14 ha. Un lugar de esparcimiento, donde su frondosa arboleda hace de él un lugar ideal para pasar un agradable día al aire libre. Por mínimos aranceles podrá utilizar los quinchos abiertos con parrilla, los quinchos cerrados y calefaccionados o el salón de fiestas para cien personas. Cada afiliado podrá ingresar con seis invitados, abonando un arancel por cada uno.Se encuentra abierto de martes a domingo, tanto en invierno como en verano.", extra: "Abierto de martes a domingo de 8 a 19 hs.", hobbies: ["uno","dos"])
                    
]
