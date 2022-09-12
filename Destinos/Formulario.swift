//
//  Formulario.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 09/09/2022.
//

import SwiftUI

struct Formulario: View {
    @State var show: Bool = false
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var documento = ""
    @State private var phone = ""
    @State private var email = ""
    @State private var mayores = 1
    @State private var menores = 1
    let habitaciones = ["doble","selecionar"]
    @State private var habitacion = "selecionar"
    
    @State private var ingreso = Date()
    @State private var egreso = Date()
    @State private var mensaje = ""
    
    var body: some View {
            Form {
                Section(header: Text("Ingresar datos")){
                    TextField("Nombre:", text: $firstName)
                    TextField("Apellido:", text: $lastName)
                    
                    TextField("DNI:", text: $documento)
                    TextField("Email:", text: $email)
                    TextField("Telefono:", text: $phone)
                    
                    
                    Stepper("Mayores de edad: \(mayores)", value: $mayores,in: 1...10)
                    Stepper("Menores de edad: \(menores)", value: $menores,in: 0...10)
                    
                    
                    Picker("Tipo de Habitación", selection: $habitacion) {
                        ForEach(habitaciones, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                
                Section(header: Text("Ingresar Fechas")){
                    DatePicker("Ingreso",selection: $ingreso,displayedComponents: .date)
                    DatePicker("Egreso",selection: $egreso,displayedComponents: .date)
                }
                
                HStack() {
                           Button("Button 1") {
                               print("Button 1")
                           }
                }

            
            }
          
            .navigationTitle("Reservas")
        }
    }


struct Formulario_Previews: PreviewProvider {
    static var previews: some View {
        Formulario()
    }
}


/*
 Image(systemName: "xmark")
     .foregroundColor(.black)
     .font(.largeTitle)
 */
