//
//  NetworkService.swift
//  weather-forecast
//
//  Created by user205798 on 4/5/22.
//

import Foundation
import SwiftUI

class NetworkService {
    
    let appId = "4783815e42ede4c0d5ed31bffc3055e8"
    
    func getWeatherData(city: String, completion: @escaping(MainForecastResponse?)->()) {
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(appId)") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) {
            data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let weatherResponse = try?
            JSONDecoder().decode(MainForecastResponse.self, from: data)
            
            if let weatherResponse = weatherResponse {
                completion(weatherResponse)
            } else {
                completion(nil)
            }
        }.resume()
    }
}
