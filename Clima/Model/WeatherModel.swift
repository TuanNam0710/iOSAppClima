//
//  WeatherModel.swift
//  Clima
//
//  Created by Pham Le Tuan Nam on 18/06/2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701, 721...771:
            return "cloud.fog"
        case 711:
            return "smoke"
        case 781:
            return "tornado"
        case 800:
            return "sun.max"
        default:
            return "cloud"
        }
    }
}
