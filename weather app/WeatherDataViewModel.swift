//
//  WeatherDataViewModel.swift
//  weather app
//
//  Created by Jinglin Li on 2025-01-24.
//

import Foundation

@Observable
class GameViewModel {
    private let urlString = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m"
    
    private(set) var isLoading = false
    private(set) var weatherData: WeatherData?
    
    init() {
        
    }
    
    func loadWeatherData() async {
        guard let url = URL(string: urlString) else {
            return
        }
        
        if let data = try? await URLSession.shared.data(from: url) {
            print(String(data: data.0, encoding: .utf8))
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            do {
                let weatherData = try JSONDecoder().decode(WeatherData.self, from: data.0)
                print(weatherData) // Now you have the WeatherData struct populated with the API data
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
    }
}
