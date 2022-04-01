//
//  NoDoRow.swift
//  noTodo
//
//  Created by user205798 on 3/30/22.
//

import SwiftUI


struct NoDoRow: View {
    @State var nodoValue: Nodo
    @State var nodoList: [Nodo]
    
    
    var body: some View {
        VStack(alignment: .center, spacing:2) {
            Group {
                HStack {
                    Text(nodoValue.name)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                    Spacer()
                    Image(systemName:
                            nodoValue.isDone ? "checkmark" :
                            "square").padding()
                }
                
                HStack(alignment: .center, spacing: 3) {
                    Spacer()
                    Text("Added \(nodoValue.createdAt)")
                        .foregroundColor(.white)
                        .italic()
                        .padding(.all,4)
                }.padding(.bottom,5)
                
            }.padding(.all,4)
        }.background(
            nodoValue.isDone  ? Color.gray :
            Color.pink)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .onTapGesture {
                
                let index = self.nodoList.firstIndex(of: nodoValue)
                self.nodoValue.isDone.toggle()
                self.nodoList[index ?? 0] = self.nodoValue
                save(nodoList: self.nodoList)
            }
    }
  
}
