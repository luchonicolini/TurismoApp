//
//  Hoteleria.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 27/08/2022.
//

import SwiftUI

struct Hoteleria: View {
  
    //ModelHoteleria
    struct ListItem: Identifiable {
        var id = UUID()
        var name: String
        var descuentos: String
        var phone: String
        var mail: String
        var web: URL
        
    }

    var informacion: [ListItem] = [
        ListItem(name: "Posada El Chamán (Puerto Iguazú)", descuentos: "25 % de descuento", phone: "tel:3757435105" ,mail: "mailto:posadadelchaman@gmail.com", web: URL(string: "https://www.posadadelchaman.com/")!),
        
        ListItem(name: "Hotel Queguay (Colón)", descuentos: "15 % de descuento", phone: "tel:8005551212" ,mail: "mailto:apple@me.com", web: URL(string: "https://www.posadadelchaman.com/")!),
        
        ListItem(name: "Agencia de viaje Sentidos (Colón)", descuentos: "10% y el 15% de descuento", phone: "tel:8005551212" ,mail: "reservas@posadadelchaman.com.ar", web: URL(string: "https://turismosentidos.com.ar/web/")!),
        
        ListItem(name: "Cabañas Bella Alba (San Rafael)", descuentos: "25 % de descuento", phone: "tel:8005551212" ,mail: "reservas@posadadelchaman.com.ar", web: URL(string: "https://turismosentidos.com.ar/web/")!),
        
        ListItem(name: "Cabañas Islas Malvinas (San Rafael)", descuentos: "25 % de descuento", phone: "tel:8005551212" ,mail: "reservas@posadadelchaman.com.ar", web: URL(string: "https://turismosentidos.com.ar/web/")!),
        
        ListItem(name: "Casa Turística (San Rafael)", descuentos: "25 % de descuento", phone: "tel:8005551212" ,mail: "reservas@posadadelchaman.com.ar", web: URL(string: "https://turismosentidos.com.ar/web/")!),

        ListItem(name: "Hotel Colonial (San Bernardo)", descuentos: "25 % de descuento", phone: "tel:8005551212" ,mail: "reservas@posadadelchaman.com.ar", web: URL(string: "https://turismosentidos.com.ar/web/")!),
        
        
    ]
    
    var body: some View {
            List(informacion) { info in
                Section(header: Text(info.name.uppercased())) {
                    VStack(spacing: 0) {
                        Text("\(info.descuentos)")
                            .font(.subheadline)
                    }
                    
                    Link(destination: URL(string: info.phone)!, label: {
                        HStack {
                               Image(systemName: "phone.circle.fill")
                                .foregroundColor(.green)
                               Text("Telefono")
                           }
                        .foregroundColor(.black)
                    })
                    
                    Link(destination: URL(string: info.mail)!, label: {
                        HStack {
                               Image(systemName: "paperplane.fill")
                                .foregroundColor(.blue)
                               Text("Correo")
                           }
                        .foregroundColor(.black)
                      
                    })
                    
                    Link(destination: info.web , label: {
                        HStack {
                               Image(systemName: "link")
                                .foregroundColor(.gray)
                               Text("Web")
                           }
                        .foregroundColor(.black)
                      
                    })
                    
                }
               
            }
            //.listStyle(.inset)
            .navigationTitle("Hoteleria Convenida")
        }
    }


struct Hoteleria_Previews: PreviewProvider {
    static var previews: some View {
        Hoteleria()
    }
}





