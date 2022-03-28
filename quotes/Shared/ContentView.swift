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
    var quotes: [Quote] = [
    Quote(quote: "First Quote, in the beningin, in the benigin, in the beningini", name: "Robert"),
    Quote(quote: "First Quote, in the beningin, in the benigin, in the beningini", name: "Robert"),
    Quote(quote: "First Quote, in the beningin, in the benigin, in the beningini", name: "Robert"),
    Quote(quote: "First Quote, in the beningin, in the benigin, in the beningini", name: "Robert"),
    Quote(quote: "First Quote, in the beningin, in the benigin, in the beningini", name: "Robert"),
    Quote(quote: "First Quote, in the beningin, in the benigin, in the beningini", name: "Robert"),
    Quote(quote: "First Quote, in the beningin, in the benigin, in the beningini", name: "Robert"),
    Quote(quote: "First Quote, in the beningin, in the benigin, in the beningini", name: "Robert"),
    Quote(quote: "First Quote, in the beningin, in the benigin, in the beningini", name: "Robert"),
    Quote(quote: "First Quote, in the beningin, in the benigin, in the beningini", name: "Robert"),
    Quote(quote: "First Quote, in the beningin, in the benigin, in the beningini", name: "Robert"),
    ]

    var body: some View {
        VStack {
            HStack {
                Text("\(self.quotes.count) Quotes Available")
                    .italic()
                    .foregroundColor(.orange)
            }
            
            ScrollView(.horizontal,showsIndicators:false) {
                HStack {
                    ForEach(self.quotes, id: \.self) {
                        quote in
                        VStack {
                          CircleImage(imageName: "lilly")
                            Text(#" "\#(quote.quote) " "#).font(.headline)
                            Divider()
                            Text("By - \(quote.name)").italic()
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
