//
//  RecrativoDetail.swift
//  DonatelloProject (iOS)
//
//  Created by Luciano Nicolini on 25/08/2022.
//

import SwiftUI

struct RecrativoDetail: View {
    //var info: [CardRecreativo] = information
    let scrum: CardRecreativo
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(scrum.hobbies) { hobbies in
                   
                    Image(hobbies.name)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        
                        
                }
                .frame(width: 80, height: 80)
                .background(Color.orange)
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct RecrativoDetail_Previews: PreviewProvider {
    static var previews: some View {
        RecrativoDetail(scrum: CardRecreativo.sampleData[1])
    }
}


