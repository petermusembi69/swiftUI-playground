//
//  MainForecast.swift
//  weather-forecast
//
//  Created by user205798 on 4/5/22.
//

import Foundation
import SwiftUI

class MainForecastResponse: Decodable {
    var cod: Int?
    var name: String?
    var coord: Coordinates?
    var sys: Sys?
    var main: Main?
    var weather: [Weather?]
    var clouds: Clouds?
}


class Clouds: Decodable {
    var all: Int
}

class Weather: Decodable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}

class Main: Decodable {
    var temp: Double
    var pressure: Int
    var humidity: Int
}

class Coordinates: Decodable {
    var lon: Double
    var lat: Double
}

class Sys: Decodable {
    var country: String
}
