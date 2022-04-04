//
//  FoodItem.swift
//  startbacks
//
//  Created by user205798 on 4/4/22.
//

import SwiftUI

struct FoodItem: View {
    var data: Food
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30).frame(width: 90, height: 90).foregroundColor(Color("cremeDarker"))
            
            Image(data.image)
                .resizable()
                .frame(width:70, height: 70)
                .clipShape(Circle())
                .overlay(Circle().stroke())
        }
    }
}

