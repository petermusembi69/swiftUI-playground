//
//  TopView.swift
//  startbacks
//
//  Created by user205798 on 4/4/22.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                Image("dropsIcon")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .background(RoundedRectangle(cornerRadius: 12).frame(width: 40, height: 50).foregroundColor(Color("darkGreen").opacity(0.6)))
                
                Spacer()
                Text("STARBUX")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.heavy)
                    .bold()
                    .padding(.trailing,38)
                    
                Spacer()
            }.padding(.leading,30)
                .padding(.top,12)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
