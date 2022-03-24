//
//  ContentView.swift
//  stacks_personal_card
//
//  Created by user205798 on 3/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            
            Image(systemName: "p.circle.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80).foregroundColor(.blue).overlay(Circle().stroke(.white,lineWidth: 1))
                .shadow(radius:3)
            VStack(alignment: .leading)
            {
                
             
                Text("Peter Musembi")
                    .font(.title)
                    .foregroundColor(.white
                    )
                Text("petermusembi.com")
                    .font(.subheadline)
                    .foregroundColor(.white)
             
                
                HStack {
                    Image(systemName: "t.square.fill")
                        .foregroundColor(.pink)
                    
                    Text(": @buildappswithme")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                        .bold()
                        .italic()
                
                }
            }
        }.frame(width: 300, height: 200)
            .background(Color.orange)
            .cornerRadius(8)
            .shadow(radius: 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
