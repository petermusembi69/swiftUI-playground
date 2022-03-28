//
//  ContentView.swift
//  ParseJ
//
//  Created by user205798 on 3/28/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkingManager = Networkingmanager()
    
    var body: some View {
        List(networkingManager.dataList) {
            data in
            Text(data.title).font(.title)
                .foregroundColor(.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
