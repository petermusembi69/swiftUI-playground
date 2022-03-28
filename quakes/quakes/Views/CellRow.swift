//
//  CellRow.swift
//  quakes
//
//  Created by user205798 on 3/28/22.
//

import SwiftUI

struct CellRow: View {
    var quakeFeatures: Features
    var body: some View {
        HStack(alignment: .center, spacing: 9) {
            VStack(alignment: .leading) {
                VStack {
                    Text(String(quakeFeatures.properties.mag))
                        .bold()
                        .foregroundColor(.white)
                        .font(.headline)
                
                }.frame(width: 100, height: 100)
                    .background(Color.green)
            
            }.clipShape(Circle())
                .overlay(Circle().stroke(.gray,lineWidth: 1))
                .shadow(radius: 10)
            
            VStack {
                Text(quakeFeatures.properties.place)
                    .foregroundColor(.gray)
                
                Text("Time \(timeConverter(timeStamp:quakeFeatures.properties.time))")
                    .italic()
                    .foregroundColor(.orange)
                    .font(.subheadline)
                    .padding(.top,2)
            }
        }
    }
}

