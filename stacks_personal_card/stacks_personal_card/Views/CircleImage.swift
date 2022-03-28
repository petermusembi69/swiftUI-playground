//
//  CircleImage.swift
//  stacks_personal_card
//
//  Created by user205798 on 3/28/22.
//

import SwiftUI

struct CircleImage: View {
    var imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80).foregroundColor(.blue).overlay(Circle().stroke(.white,lineWidth: 1))
            .shadow(radius:3)
    }
}


