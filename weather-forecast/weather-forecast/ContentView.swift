//
//  ContentView.swift
//  weather-forecast
//
//  Created by user205798 on 4/5/22.
//

import SwiftUI

struct ContentView: View {
    @State var showView: Bool = false
    @ObservedObject var forecastViewModel: ForecastViewModel
    
    init() {
        self.forecastViewModel = ForecastViewModel()
    }
    
    var body: some View {
        ZStack {
            BackSplash()
            
            VStack {
                TopView(
                    showField: self.showView, forecastViewModel:self.forecastViewModel)
                
                MidView(forecastViewModel: self.forecastViewModel)
            }
            
            VStack(alignment: .center, spacing: 8) {
                Image(systemName: Helper().showWeatherIcon(item: self.forecastViewModel.weatherForcast))
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .foregroundColor(.white)
                
                
                CurrentTempView(forecastViewModel: self.forecastViewModel)
            }
        }
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
