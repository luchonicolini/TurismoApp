//
//  DestinoDetail.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 29/08/2022.
//

import SwiftUI

struct DestinoDetail: View {
    @EnvironmentObject var modelData: ModelData
    @State private var isFormularioSheet = false
    var landmark: Landmark
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color("Background"))
                .edgesIgnoringSafeArea(.all)
            ScrollView(.vertical,showsIndicators: false) {
                
                //IMG
                GeometryReader { reader in
                    landmark.image
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(3 / 2, contentMode: .fit)
                        .shadow(radius: 4)
                    
                }
                .frame(height: 280)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                        .fontWeight(.medium)
                    
                    
                    HStack {
                        Text(landmark.city)
                        Spacer()
                        Text(landmark.phone)
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider().background(Color.orange)
                    
                    VStack(alignment: .leading) {
                        Text("Condiciones del Hotel")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(Color("Decoracion"))
                        
                        HStack(spacing:10) {
                            Text("Horario de entrada: 14:00")
                                .font(.title3)
                                .foregroundColor(Color("Decoracion"))
                                .lineLimit(nil)
                            
                            Spacer()
                            Text("Horario de Salida: 10:00")
                                .font(.title3)
                                .foregroundColor(Color("Decoracion"))
                                .lineLimit(nil)
                        }
                    }
                    
                    Text("Descripción")
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding(.top, 0.1)
                    Text(landmark.description)
                        .foregroundColor(Color("Decoracion"))
                    
                    //BOTONES
                    
                    Link(destination: URL(string: landmark.website)!, label: {
                        Label("Tarifas", systemImage: "dollarsign.square.fill")
                            .font(.system(size: 18).bold())
                            .padding(10)
                            .frame(width: 350)
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(6)
                    })
                    
                    Button(action: {
                        isFormularioSheet.toggle()
                    }, label: {
                        Text("Formu")
                    })
                    .sheet(isPresented: $isFormularioSheet) {
                        NavigationView {
                            Formulario()
                                .toolbar {
                                    ToolbarItem(placement: .cancellationAction) {
                                        Button("Cancel") {
                                            isFormularioSheet = false
                                        }
                                    }
                                }
                        }
                    }
                    
                    
                }
                .offset(y: -5)
                .padding()
            }
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DestinoDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        DestinoDetail(landmark: modelData.landmarks[6])
            .environmentObject(modelData)
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}




/*
 Link(destination: URL(string: "https://www.example.com/TOS.html")!, label: {
     Label("Tarifas", systemImage: "dollarsign.square.fill")
         .font(.system(size: 18).bold())
         .padding(10)
        // .frame(width: 350)
         .foregroundColor(.white)
         .background(Color.orange)
         .cornerRadius(6)
 })
 */
