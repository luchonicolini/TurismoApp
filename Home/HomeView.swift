//
//  HomeView.swift
//  Example (iOS)
//
//  Created by Luciano Nicolini on 27/08/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isHoteleriaSheet = false
    @State private var isVacacionesSheet = false
    @State private var isBeneficioSheet = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("Background").ignoresSafeArea(.all)
                ScrollView(.vertical,showsIndicators: false) {
                    VStack(spacing: 0) {
                        Image("logo").resizable().aspectRatio(contentMode: .fit).frame(width: 90).padding(.vertical, 11.0)
                        
                        Divider().overlay(Color(.black)).frame(height: 1).opacity(0.4)
                        
                        DateView(launcher: "Novedades")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(.horizontal, 20)
                        
                        SubModuloHome()
                            .padding()
                        
                    }
                    
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


//SubModuloHome

struct SubModuloHome:View {
    @State private var isHoteleriaSheet = false
    @State private var isVacacionesSheet = false
    @State private var isBeneficioSheet = false
    
    
    var body: some View {
        //1
        Button(action: {
            isHoteleriaSheet.toggle()
        }, label: {
            VStack(alignment: .leading) {
                Image("hoteleria")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                Text("HOTELERÍA CONVENIDA IOSFA")
                    .font(.title2).bold()
                    .foregroundColor(Color("Decoracion"))
                
                Text("Opciones en Misiones, Entre Ríos, Mendoza y Costa Atlántica. IOSFA ha desarrollado distintos acuerdos turísticos para que puedan ser utilizados por sus afiliados.")
                    .font(.caption)
                    .foregroundColor(Color("Decoracion"))
                    .multilineTextAlignment(.leading)
                
            }
            
        })
        .sheet(isPresented: $isHoteleriaSheet) {
            NavigationView {
                Hoteleria()
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isHoteleriaSheet = false
                            }
                        }
                    }
            }
        }
        
        //2
        Button(action: {
            isBeneficioSheet.toggle()
        }, label: {
            VStack(alignment: .leading) {
                Image("beneficiosTurismo")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                Text("BENEFICIOS TURISMO IOSFA".uppercased())
                    .font(.title2).bold()
                    .foregroundColor(Color("Decoracion"))
                
                Text("Todos los afiliados al IOSFA podrán disfrutar de los siguientes beneficios.")
                    .font(.caption)
                    .foregroundColor(Color("Decoracion"))
                    .multilineTextAlignment(.leading)
                
            }
            
        })
        .sheet(isPresented: $isBeneficioSheet) {
            NavigationView {
                Beneficio()
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isBeneficioSheet = false
                            }
                        }
                    }
            }
        }
        
        //3
        Button(action: {
            isVacacionesSheet.toggle()
        }, label: {
            VStack(alignment: .leading) {
                Image("beneficio-Mardel1")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                Text("TEMPORADA BAJA EN MAR DEL PLATA".uppercased())
                    .font(.title2).bold()
                    .multilineTextAlignment(.leading)
                
                    .foregroundColor(Color("Decoracion"))
                
                Text("Conocé las mejores opciones turísticas de IOSFA.")
                    .font(.caption)
                    .foregroundColor(Color("Decoracion"))
                    .multilineTextAlignment(.leading)
                
            }
            
        })
        .sheet(isPresented: $isVacacionesSheet) {
            NavigationView {
                Temporada()
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isVacacionesSheet = false
                            }
                        }
                    }
            }
        }

        
    }
}


