//
//  WeatherGetter.swift
//  SunnyBAE
//
//  Created by Aujla, Noorpreet on 4/17/18.
//  Copyright © 2018 Capital One Financial. All rights reserved.
//

import Foundation

class WeatherGetter {

    private let openWeatherMapBaseURL = "http://api.openweathermap.org/data/2.5/weather"
    private let openWeatherMapAPIKey = "1b2ffbcad727065a8608077c9d652150"

    func getWeather(zipCode: Int) {

        // This is a pretty simple networking task, so the shared session will do.
        let session = URLSession.shared

        let weatherRequestURL = NSURL(string: "\(openWeatherMapBaseURL)?APPID=\(openWeatherMapAPIKey)&q=\(zipCode)")!

        // The data task retrieves the data.
        let dataTask = session.dataTask(with: weatherRequestURL as URL) {
            (data: Data?, response: URLResponse?, error: Error?) in
            if let error = error {
                // Case 1: Error
                // We got some kind of error while trying to get data from the server.
                print("Error:\n\(error)")
            }
            else {
                // Case 2: Success
                // We got a response from the server!
                print("Raw data:\n\(data!)\n")
                let dataString = String(data: data!, encoding: String.Encoding.utf8)
                print("Human-readable data:\n\(dataString!)")
            }
        }

        // The data task is set up...launch it!
        dataTask.resume()
    }

}
