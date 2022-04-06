//
//  ForcastViewModel.swift
//  weather-forecast
//
//  Created by user205798 on 4/5/22.
//

import Combine
import SwiftUI

class ForecastViewModel: ObservableObject {
    
    var weatherService: NetworkService!
    var cityName: String = "Nairobi"
    
    @Published var weatherForcast: MainForecastResponse?
    
    init() {
        self.weatherService = NetworkService()
    }
    
    var currentCity: String {
        if let city = self.weatherForcast?.name {
            return city
        } else {
            return ""
        }
    }
    
    var currentCounty: String {
        if let country = self.weatherForcast?.sys?.country {
            return country
        } else {
            return ""
        }
    }
    
    var temparature: String {
        if let temp = self.weatherForcast?.main?.temp {
            let formattedString = String(format: "%.0f", temp - 273)
            return formattedString + "°C"
        } else {
            return ""
        }
    }
    
    
    var humidity: String {
        if let humidity = self.weatherForcast?.main?.humidity {
            let formattedString = String(humidity)
            return formattedString
        } else {
            return ""
        }
    }
    
    var days: String {
        if let days = self.weatherForcast?.weather.count {
            let formattedString = String(days)
            return formattedString
        } else {
            return ""
        }
    }
    
    var pressure: String {
        if let pressure = self.weatherForcast?.main?.temp {
            let formattedString = String(pressure)
            return formattedString
        } else {
            return ""
        }
    }
       var weatherDescription: String {
           if let description = self.weatherForcast?.weather.first??.description {
               let formattedString = description.capitalized(with: .current)
               return formattedString
           } else {
               return ""
           }
       }
        
    func searchCity() {
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            fetchWeatherForecast(by: city)
        }
    }
    
    func fetchWeatherForecast(by city: String) {
        self.weatherService.getWeatherData(city: cityName) {
            forecast in
            if let forecast =  forecast {
                DispatchQueue.main.async {
                    self.weatherForcast = forecast
                }
             }
        }
    }
    
}
