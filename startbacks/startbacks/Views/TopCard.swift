//
//  TopCard.swift
//  startbacks
//
//  Created by user205798 on 4/4/22.
//

import SwiftUI

struct TopCard: View {
    
    @Binding var showTopCard: Bool
    @Binding var foodData: [Food]
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 45)
                .frame(width: 380, height: 270)
                .offset(x: -17)
                .foregroundColor(Color("cremeWhite"))
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 180)
                .offset(x: -165)
                .foregroundColor(Color("cremeWhite"))
            
            HStack {
                Image("frappuccino")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 150, height: 150)
                
                VStack {
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack {
                            ForEach(self.foodData, id: \.id) {
                                item in
                                FoodItem(data: item)
                            }
                    }
                    VStack(alignment: .leading) {
                        Text("Caramel Creme Frappucino")
                            .fontWeight(.heavy)
                            .font(.title)
                            .foregroundColor(Color("darkGreen"))
                            .frame(minWidth:0,maxWidth: .infinity,alignment: .leading)
                            .lineLimit(nil)
                    }.padding(EdgeInsets(top:0,leading: 10,bottom:0,trailing: 10))
                }.frame(width: 240)
                    .padding(.trailing,50)
            }.padding(.trailing,3)
        }.animation(.spring())
            .onTapGesture {
                self.showTopCard.toggle()
            }
            .offset(x: self.showTopCard ? 0 : -300)
    }
}
}

