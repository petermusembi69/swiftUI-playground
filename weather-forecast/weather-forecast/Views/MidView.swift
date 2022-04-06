//
//  MidView.swift
//  weather-forecast
//
//  Created by user205798 on 4/6/22.
//

import SwiftUI

struct MidView: View {
    @ObservedObject var forecastViewModel: ForecastViewModel
    var body: some View {
        VStack {
            Text("\(self.forecastViewModel.currentCity), \(self.forecastViewModel.currentCounty)")
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.light)
            Spacer()
        }.padding(.trailing,200)
    }
}
