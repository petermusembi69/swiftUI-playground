//
//  ContentView.swift
//  Shared
//
//  Created by user205798 on 3/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        
            CircleImage(imageName: "lilly").frame(width: 160, height: 160)
            MainView()
            Spacer()
        }
        .background(Image("motivation_bg").resizable().scaledToFill().edgesIgnoringSafeArea(.all))
    }
}

struct MainView: View {
    let quotes = ["quote1", "quote2", "quote3","quote4","quote1", "quote2", "quote3","quote4","quote1", "quote2", "quote3","quote4"]
    var body: some View {
        VStack {
            HStack {
                Text("Quotes Available")
                    .italic()
                    .foregroundColor(.orange)
            }
            
            ScrollView(.horizontal,showsIndicators:false) {
                HStack {
                    ForEach(self.quotes, id: \.self) {
                        quote in
                        VStack {
                          CircleImage(imageName: "lilly")
                            Text(quote)
                            Divider()
                            Text("By Jame Bond").italic()
                                .font(.custom("Poppins", size: 14))
                        }.frame(width: 300, height: 300).foregroundColor(.gray).padding(.all,4).background(.white).cornerRadius(13)
                            .overlay(Rectangle()
                                        .fill(
                                        
                                            LinearGradient(
                                                gradient: Gradient(
                                                    colors: [.clear,.pink]), startPoint: .center, endPoint: .topLeading
                                            )
                                        ).clipped()
                                        .shadow(radius: 8)
                                        .cornerRadius(13)
                            )
                    }
                }
            }
        }
    }
}

struct CircleImage: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray,lineWidth: 2))
            .shadow( radius: 10)
            .frame(width: 100, height: 100)

}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
