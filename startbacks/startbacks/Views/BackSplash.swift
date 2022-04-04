//
//  BackSplash.swift
//  startbacks
//
//  Created by user205798 on 4/4/22.
//

import SwiftUI

struct BackSplash: View {
    var body: some View {
        Rectangle()
            .fill(
                LinearGradient(gradient: Gradient(colors: [Color("lightGreen")]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackSplash_Previews: PreviewProvider {
    static var previews: some View {
        BackSplash()
    }
}
