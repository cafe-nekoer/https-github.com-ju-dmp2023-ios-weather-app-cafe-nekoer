//
//  DailyUnits.swift
//  weather app
//
//  Created by Jinglin Li on 2025-01-24.
//

import Foundation

struct DailyUnits: Decodable {
    let time: String
    let temperature2mMax: String
    let temperature2mMin: String
    
    enum CodingKeys: String, CodingKey {
        case time, temperature2mMax = "temperature_2m_max", temperature2mMin = "temperature_2m_min"
    }
}
