//
//  CurrentTempView.swift
//  weather-forecast
//
//  Created by user205798 on 4/6/22.
//

import SwiftUI

struct CurrentTempView: View {
    @ObservedObject var forecastViewModel: ForecastViewModel
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                Text(self.forecastViewModel.temparature)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .bold()
                
                Text(self.forecastViewModel.weatherDescription)
                    .foregroundColor(Color("secondary"))
                }
                HStack(spacing: 6) {
                VStack {
                    Text(self.forecastViewModel.humidity)
                        .bold()
                        .foregroundColor(Color("secondary"))
                    
                    Text("Humidity")
                        .foregroundColor(Color("secondary"))
                }
                
              VStack {
                  Text(self.forecastViewModel.pressure)
                      .bold()
                      .foregroundColor(Color("secondary"))
                  
                  Text("Pressure")
                      .foregroundColor(Color("secondary"))
              }
                }
                Text("\(self.forecastViewModel.days) day Forecast")
                    .foregroundColor(Color("secondary"))
                    .bold()
                    .padding(.all,20)
                
            }
        }
    }
}


