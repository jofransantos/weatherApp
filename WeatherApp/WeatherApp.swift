//
//  WeatherApp.swift
//  WeatherApp
//
//  Created by Joff on 07/01/23.
//

import SwiftUI

@main

struct WeatherApp: App {
  var body: some Scene {
    WindowGroup {
      let weatherService = WeatherService()
      WeatherView(viewModel: WeatherViewModel(weatherService: weatherService))
    }
  }
}
