//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Joff on 07/01/23.
//

import SwiftUI

struct WeatherView: View {
    
    @ObservedObject var viewModel: WeatherViewModel
    
    var body: some View {
        
        VStack{
            Text(viewModel.cityName)
                .font(.largeTitle)
                .padding()
              Text(viewModel.temperature)
                .font(.system(size: 70))
                .bold()
              Text(viewModel.weatherIcon)
                .font(.largeTitle)
                .padding()
              Text(viewModel.weatherDescription)
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(viewModel: WeatherViewModel(weatherService: WeatherService()))
    }
}
