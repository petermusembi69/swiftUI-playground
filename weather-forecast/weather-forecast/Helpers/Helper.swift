//
//  Helper.swift
//  weather-forecast
//
//  Created by user205798 on 4/6/22.
//

import Foundation

struct Helper {
    
    func timeConverter(timeStamp: Int, isDay: Bool) -> String {
                 
                 let unixTimestamp = timeStamp // so we can get milliseconds!
                 
              let date = Date(timeIntervalSince1970: TimeInterval(unixTimestamp))
                 
                 let dateFormatter = DateFormatter()
                 dateFormatter.timeZone = TimeZone(abbreviation: "GMT")
                 
                 dateFormatter.locale = NSLocale.current
                 dateFormatter.dateFormat = isDay ? "EEEE" : "dd MMM YY, hh:mm a"
                 
                 return dateFormatter.string(from: date)
                 
                 
             }
          
    func showWeatherIcon(item: MainForecastResponse?) -> String {
                
        let main = item?.weather.first??.main
                
                switch main {
                case "Ash":
                    return "cloud.hail"
                case "Clear":
                    return "sun.max"
                case "Clouds":
                    return "cloud.sun.fill"
                case "Drizzle":
                    return "cloud.drizzle.fill"
                case "Dust":
                    return "sun.dust.fill"
                case "Fog":
                    return "cloud.fog.fill"
                case "Haze":
                    return "sun.haze.fill"
                case "Mist":
                    return "cloud.drizzle"
                case "Rain":
                    return "cloud.rain.fill"
                case "Sand":
                    return "cloud.hail"
                case "Snow":
                    return "cloud.snow.fill"
                case "Squall":
                    return "cloud.hail"
                case "Thunderstorm":
                    return "cloud.bol.fill"
                    
                default:
                    return "clear"
                }
                
            }
      
    
}
