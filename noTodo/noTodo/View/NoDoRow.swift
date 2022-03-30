//
//  NoDoRow.swift
//  noTodo
//
//  Created by user205798 on 3/30/22.
//

import SwiftUI


struct NoDoRow: View {
    @State var nodoItem: String = ""
    @State var isDone: Bool = false
    @State var timeAgo: String
    
    var body: some View {
        VStack(alignment: .center, spacing:2) {
            Group {
                HStack {
                    Text(nodoItem)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                    Spacer()
                    Image(systemName:
                            self.isDone ? "checkmark" :
                            "square").padding()
                }
                
                HStack(alignment: .center, spacing: 3) {
                    Spacer()
                    Text("Added \(self.timeAgo)")
                        .foregroundColor(.white)
                        .italic()
                        .padding(.all,4)
                }.padding(.bottom,5)
                
            }.padding(.all,4)
        }.background(
            self.isDone ? Color.gray :
            Color.pink)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .onTapGesture {
                self.isDone.toggle()
            }
    }
  
}
