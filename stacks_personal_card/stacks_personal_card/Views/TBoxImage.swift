//
//  TCircleImage.swift
//  stacks_personal_card
//
//  Created by user205798 on 3/28/22.
//

import SwiftUI

struct TBoxImage: View {
    var imageName: String
    var body: some View {
        Image(systemName: imageName)
            .foregroundColor(.pink)
    }
}

