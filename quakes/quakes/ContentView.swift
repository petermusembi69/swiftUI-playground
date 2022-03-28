//
//  ContentView.swift
//  quakes
//
//  Created by user205798 on 3/28/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkingManager()
    
    var body: some View {
        NavigationView {
        List(networkManager.dataList.features, id: \.properties) {
            quake in
            NavigationLink(destination:Text("Hello")) {
                CellRow(quakeFeatures: quake)
            }
          }
        }
    }
}

func timeConverter(timeStamp: Double) -> String {
    let unixTimestamp = timeStamp / 1000
    
    let date = Date(timeIntervalSince1970: unixTimestamp)
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(abbreviation: "EAT")
    dateFormatter.locale = NSLocale.current
    dateFormatter.dateFormat = "dd MMM YY, hh:mm a"
    
    return dateFormatter.string(from: date)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
