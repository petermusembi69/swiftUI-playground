//
//  BackSplash.swift
//  weather-forecast
//
//  Created by user205798 on 4/5/22.
//

import SwiftUI

struct BackSplash: View {
    var body: some View {
        Rectangle()
            .fill(LinearGradient(gradient: Gradient(colors: [
            Color("lightPink"),
            Color("lightBlue")
            ]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackSplash_Previews: PreviewProvider {
    static var previews: some View {
        BackSplash()
    }
}
