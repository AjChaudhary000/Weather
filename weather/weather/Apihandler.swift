//
//  Apihandler.swift
//  weather
//
//  Created by DCS on 14/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import Foundation
class Apihandler {
    static let shered = Apihandler()
    func search_weather(with name:String) -> [WeatherDetails] {
        if let url = URL(string: "https://api.weatherapi.com/v1/current.json?key=6e24ce0b954f4e7489772119211407&q=\(name)"){
            do { let data = try Data(contentsOf: url)
             
                let decoder = JSONDecoder()
                do{ let jsonWeather = try decoder.decode(WeatherDetails.self, from: data)
                    print(jsonWeather.current.condition.icon)
                    return  [jsonWeather]
                }catch {
                    print(error)
                }
                
            } catch {
                print(error)
            }
        }
        
        return [WeatherDetails]()
    }
}
