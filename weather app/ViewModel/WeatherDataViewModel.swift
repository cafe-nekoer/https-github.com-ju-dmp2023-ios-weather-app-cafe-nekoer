//
//  WeatherDataViewModel.swift
//  weather app
//
//  Created by Jinglin Li on 2025-01-24.
//

import Foundation

@Observable
class WeatherDataViewModel : ObservableObject{
    private let urlString = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m,relative_humidity_2m,apparent_temperature,rain,showers,snowfall,snow_depth,weather_code,cloud_cover,cloud_cover_low,cloud_cover_mid,cloud_cover_high,visibility,wind_speed_10m,wind_speed_80m,wind_speed_120m,wind_speed_180m"
    
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
            //decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            do {
                let weatherData = try decoder.decode(WeatherData.self, from: data.0)
                print(weatherData) // Now you have the WeatherData struct populated with the API data
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
    }
}
