//
//  NetworkingManager.swift
//  quakes
//
//  Created by user205798 on 3/28/22.
//

import Foundation

class NetworkingManager: ObservableObject {
    @Published var dataList = QuakesDataList(features: [])
    
    
    init() {
        guard let url = URL(string: "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson") else {return}
        
        URLSession.shared.dataTask(with: url) {
            (data, _, _) in
            guard let data = data else {return}
            
            let dataList = try! JSONDecoder().decode(QuakesDataList.self, from: data)
            
            DispatchQueue.main.async {
                self.dataList = dataList
            }
        }.resume()
    }
}
