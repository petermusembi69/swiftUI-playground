//
//  TopView.swift
//  weather-forecast
//
//  Created by user205798 on 4/5/22.
//

import SwiftUI

let UIWidth = UIScreen.main.bounds.width
let UIHeight = UIScreen.main.bounds.height

struct TopView: View {
    @State var showField: Bool = false
    @ObservedObject var forecastViewModel: ForecastViewModel
    
    var body: some View {
        ZStack {
            ZStack(alignment:.leading) {
                TextField("Enter City name", text: self.$forecastViewModel.cityName) {
                    self.forecastViewModel.searchCity()
                }.padding(.all,10).frame(width: UIWidth - 50,height: 50).background(Color("lightBlue")).cornerRadius(30)
                    .foregroundStyle(.white)
                    .offset(x: self.showField ? 0 : (-UIWidth / 2 - 180))
                    .animation(.spring())
           
                Image(systemName: "magnifyingglass.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                    .offset(x: self.showField ? (UIWidth - 90) : -30)
                    .animation(.spring())
                    .onTapGesture {
                        self.showField.toggle()
                    }
            }.onAppear(perform: fetch)
        }
    }
    private func fetch() {
        self.forecastViewModel.searchCity()
    }
    
}
