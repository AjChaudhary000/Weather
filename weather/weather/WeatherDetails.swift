//
//  WeatherDetails.swift
//  weather
//
//  Created by DCS on 14/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import Foundation
class WeatherDetails:Decodable{
    var location: Weather
    var current: Detail
}

class Weather:Decodable{
    var name = ""
    var region = ""
    var country = ""
    var tz_id = ""
    var localtime = ""
    
    
}

class Detail:Decodable{
    var last_updated = ""
    var is_day:Int
    var temp_c:Float
    var temp_f :Float
    var condition: ConditionDetail
    var wind_mph:Float
    var wind_kph:Float
    var pressure_mb:Int
    var pressure_in:Float
    var humidity:Int
    
    var cloud:Int
    var uv:Float
}
class ConditionDetail:Decodable{
    var text = ""
    var icon = ""
    var code:Int
}
