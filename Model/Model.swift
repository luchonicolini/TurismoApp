//
//  Model.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 29/08/2022.
//

import Foundation

//BENEFICIOS

struct CardOferta: Identifiable {
    var id = UUID()
    let name: String
    let image: String
    var subtitule: String
    
}

var cards: [CardOferta] = [
 
    CardOferta(name: "Viaje de Bodas", image: "im_Turismo1", subtitule: "A los afiliados titulares recién casados les regalamos 10 noches de alojamiento en cualquiera de nuestros hoteles en cualquier época del año. Válido dentro de los 90 días subsiguientes al de la fecha de la boda, no fraccionables. En cualquier época del año. Será requisito la presentación de copia de Acta de Matrimonio para el otorgamiento del beneficio."),
    CardOferta(name: "Retirados, Jubilados y Pensionados", image: "im_Turismo3", subtitule: "Pueden acceder a un 10% de descuento del costo de alojamiento con desayuno para el Afiliado Titular, un acompañante e hijos a cargo."),
    
    CardOferta(name: "25-30 Años de Servicios", image: "im_beneficio2", subtitule: "A los afiliados titulares que cumplan 25 años continuos de servicio o 30 años interrumpidos de servicio les regalamos 7 noches de alojamiento con desayuno en cualquiera de nuestros hoteles. El beneficio tendrá vigencia por UN (1) año a partir de la fecha aniversario, a excepción de fines de semana largos y temporada alta."),
   
    CardOferta(name: "Cumplaños de 65", image: "im_Turismo4", subtitule: "A los afiliados titulares que cumplan 65 años les regalamos 3 noches de alojamiento con desayuno sin cargo en temporada baja en cualquiera de nuestros hoteles. Incluye un acompañante. El beneficio tendrá vigencia por UN (1) año a partir de la fecha de cumpleaños, a excepción de fines de semana largos y temporada alta. Será requisito la presentación de copia de DNI a efectos de acreditar fecha de nacimiento para el otorgamiento del Beneficio."),
   
    CardOferta(name: "Aniversario de Bodas", image: "im_Turismo5", subtitule: "A los afiliados titulares que celebren sus Bodas de Oro o Plata les obsequiamos 7 noches de alojamiento con desayuno sin cargo en cualquiera de nuestros hoteles . A los que cumplan 10, 15 o 20 años de casados les obsequiamos 50% de descuento en hasta 7 noches de alojamiento con desayuno. El beneficio tendrá vigencia por UN (1) año a partir de la fecha aniversario, a excepción de fines de semana largos y temporada alta. Será requisito la presentación de copia de Acta de Matrimonio para el otorgamiento del beneficio. Este beneficio también lo pueden disfrutar aquellas parejas que estén cumpliendo 55 años de casados y sucesivamente cada 5 años.")

]

//RECRATIVOS

struct CardRecreativo: Identifiable {
    let id: UUID
    var name: String
    let image: String
    var subtitule: String
    var phone: String
    var city: String
    var condicion: String
    var description: String
    var extra: String
    let hobbies: [hobbie]
    
    init(id: UUID = UUID(), name: String, image: String, subtitule: String, phone: String, city: String, condicion: String, description: String, extra: String, hobbies: [String]) {
        self.id = id
        self.name = name
        self.image = image
        self.subtitule = subtitule
        self.phone = phone
        self.city = city
        self.condicion = condicion
        self.description = description
        self.extra = extra
        self.hobbies = hobbies.map { hobbie(name: $0) }
        
    }
}

extension CardRecreativo {
    struct hobbie: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}

extension CardRecreativo {
    static let sampleData: [CardRecreativo] =
    [
        CardRecreativo(name: "Campo de deportes", image: "parque", subtitule: "Av. Gral. Juan Gregorio Lemos 733", phone: "Tel:(011) 4664-6170", city: "Campo de Mayo - PCIA de Buenos Aires", condicion: "Abierto de Martes a Domingo, Lunes y feriados cerrados", description: "A sólo cincuenta minutos de la Ciudad Autónoma de Buenos Aires, usted podrá disfrutar de este excelente predio de 14 ha. Un lugar de esparcimiento, donde su frondosa arboleda hace de él un lugar ideal para pasar un agradable día al aire libre. Por mínimos aranceles podrá utilizar los quinchos abiertos con parrilla, los quinchos cerrados y calefaccionados o el salón de fiestas para cien personas. Cada afiliado podrá ingresar con seis invitados, abonando un arancel por cada uno.Se encuentra abierto de martes a domingo, tanto en invierno como en verano.", extra: "Abierto de martes a domingo de 8 a 19 hs.", hobbies: ["b1"]),
        
        CardRecreativo(name: "Centro Recreativo Heroes de Malvinas", image: "muelle", subtitule: "Crucero ARA Gral Belgrano y Rivadavia - Zárate - Bs As", phone: "Tel: (03487)42-0615", city: "Zarate - PCIA de Buenos Aires", condicion: "", description: "El Centro Recreativo Héroes de Malvinas se encuentra ubicado en la ciudad de Zárate, Provincia de Buenos Aires. A 93 km de la Ciudad Autónoma de Buenos Aires. Asentado sobre las barrancas de Río Paraná de las Palmas, a escasas cuadras del centro de la ciudad de Zárate. El predio tiene una superficie de 5,4 hectáreas arboladas y parquizadas, ideales para el descanso en un medio agradable y en contacto con la naturaleza.", extra: "Abierto de Martes a Domingo de 8 a 19hs", hobbies: ["b1","b1","b1","b1","b1"])
        
    ]
}


var information: [CardRecreativo] = [
    
    CardRecreativo(name: "Campo de deportes", image: "parque", subtitule: "Av. Gral. Juan Gregorio Lemos 733", phone: "Tel:(011) 4664-6170", city: "Campo de Mayo - PCIA de Buenos Aires", condicion: "Abierto de Martes a Domingo, Lunes y feriados cerrados", description: "A sólo cincuenta minutos de la Ciudad Autónoma de Buenos Aires, usted podrá disfrutar de este excelente predio de 14 ha. Un lugar de esparcimiento, donde su frondosa arboleda hace de él un lugar ideal para pasar un agradable día al aire libre. Por mínimos aranceles podrá utilizar los quinchos abiertos con parrilla, los quinchos cerrados y calefaccionados o el salón de fiestas para cien personas. Cada afiliado podrá ingresar con seis invitados, abonando un arancel por cada uno.Se encuentra abierto de martes a domingo, tanto en invierno como en verano.", extra: "Abierto de martes a domingo de 8 a 19 hs.", hobbies: ["b1","b2","b1","b2","b3"]),
    
    CardRecreativo(name: "Centro Recreativo Heroes de Malvinas", image: "muelle", subtitule: "Crucero ARA Gral Belgrano y Rivadavia - Zárate - Bs As", phone: "Tel: (03487)42-0615", city: "Zarate - PCIA de Buenos Aires", condicion: "", description: "El Centro Recreativo Héroes de Malvinas se encuentra ubicado en la ciudad de Zárate, Provincia de Buenos Aires. A 93 km de la Ciudad Autónoma de Buenos Aires. Asentado sobre las barrancas de Río Paraná de las Palmas, a escasas cuadras del centro de la ciudad de Zárate. El predio tiene una superficie de 5,4 hectáreas arboladas y parquizadas, ideales para el descanso en un medio agradable y en contacto con la naturaleza.", extra: "Abierto de Martes a Domingo de 8 a 19hs", hobbies: ["b1","b2","b3","b4","b1","b2","b3"])
                                      
]

//..
