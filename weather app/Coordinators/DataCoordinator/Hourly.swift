//
//  HourlyWeather.swift
//  weather app
//
//  Created by Jinglin Li on 2025-01-24.
//

import Foundation

struct Hourly: Decodable {
    let time: [String] // ISO 8601 时间格式
    let temperature2m: [Double] // 温度列表 (°C)
    let relativeHumidity2m: [Double] // 相对湿度列表 (%)
    let apparentTemperature: [Double] // 体感温度列表 (°C)
    let rain: [Double] // 降雨量列表 (mm)
    let showers: [Double] // 阵雨量列表 (mm)
    let snowfall: [Double] // 降雪量列表 (cm)
    let snowDepth: [Double] // 积雪深度列表 (m)
    let weatherCode: [Int] // WMO 天气代码列表
    let cloudCover: [Double] // 云量列表 (%)
    let cloudCoverLow: [Double] // 低层云量列表 (%)
    let cloudCoverMid: [Double] // 中层云量列表 (%)
    let cloudCoverHigh: [Double] // 高层云量列表 (%)
    let visibility: [Double] // 能见度列表 (m)
    let windSpeed10m: [Double] // 10米高度风速列表 (km/h)
    let windSpeed80m: [Double] // 80米高度风速列表 (km/h)
    let windSpeed120m: [Double] // 120米高度风速列表 (km/h)
    let windSpeed180m: [Double] // 180米高度风速列表 (km/h)
    
    enum CodingKeys: String, CodingKey {
        case time
        case temperature2m = "temperature_2m"
        case relativeHumidity2m = "relative_humidity_2m"
        case apparentTemperature = "apparent_temperature"
        case rain
        case showers
        case snowfall
        case snowDepth = "snow_depth"
        case weatherCode = "weather_code"
        case cloudCover = "cloud_cover"
        case cloudCoverLow = "cloud_cover_low"
        case cloudCoverMid = "cloud_cover_mid"
        case cloudCoverHigh = "cloud_cover_high"
        case visibility
        case windSpeed10m = "wind_speed_10m"
        case windSpeed80m = "wind_speed_80m"
        case windSpeed120m = "wind_speed_120m"
        case windSpeed180m = "wind_speed_180m"
         
    }
}
