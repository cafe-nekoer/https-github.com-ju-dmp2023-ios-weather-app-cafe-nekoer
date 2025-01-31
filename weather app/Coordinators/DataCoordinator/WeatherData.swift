//
//  WeatherData.swift
//  weather app
//
//  Created by Jinglin Li on 2025-01-24.
//

import Foundation

struct WeatherData: Decodable {
    let latitude: Float
    let longitude: Float
    let timezone: String
    let hourlyUnits: HourlyUnits
    let hourly: Hourly
    
    enum CodingKeys: String, CodingKey {
        case latitude
        case longitude
        case timezone
        case hourlyUnits = "hourly_units"
        case hourly
    }
}
