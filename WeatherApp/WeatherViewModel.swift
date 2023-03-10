//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Joff on 07/01/23.
//

import Foundation

private let defaultIcon = "β"
private let iconMap = [
  "Drizzle" : "π§",
  "Thunderstorm" : "β",
  "Rain": "π§",
  "Snow": "βοΈ",
  "Clear": "βοΈ",
  "Clouds" : "βοΈ",
]

class WeatherViewModel: ObservableObject {
  @Published var cityName: String = "City Name"
  @Published var temperature: String = "--"
  @Published var weatherDescription: String = "--"
  @Published var weatherIcon: String = defaultIcon


  public let weatherService: WeatherService

  init(weatherService: WeatherService) {
    self.weatherService = weatherService
  }

  func refresh() {
    weatherService.loadWeatherData { weather in
      DispatchQueue.main.async {
        self.cityName = weather.city
        self.temperature = "\(weather.temperature)ΒΊC"
        self.weatherDescription = weather.description.capitalized
        self.weatherIcon = iconMap[weather.iconName] ?? defaultIcon
      }
    }
  }
}
