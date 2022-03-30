//
//  ContentView.swift
//  noTodo
//
//  Created by user205798 on 3/29/22.
//

import SwiftUI

struct ContentView: View {
    @State var nodo: String = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Group {
                        TextField("What will You NOT Do Today?", text: self.$nodo, onEditingChanged: {(changed) in print(changed)}) {
                            print("onCommit time")
                        }
                    }
                    }
                }
            
        }.navigationBarTitle(Text("No Todo"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
