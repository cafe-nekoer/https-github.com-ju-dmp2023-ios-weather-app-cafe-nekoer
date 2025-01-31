//
//  DailyWeather.swift
//  weather app
//
//  Created by Jinglin Li on 2025-01-24.
//

import Foundation


struct DailyWeather: Decodable {
    let time: [String]
    let temperature2mMax: [Double]
    let temperature2mMin: [Double]
    
    enum CodingKeys: String, CodingKey {
        case time, temperature2mMax = "temperature_2m_max", temperature2mMin = "temperature_2m_min"
    }
}
