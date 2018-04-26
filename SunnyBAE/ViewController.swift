//
//  ViewController.swift
//  SunIsBAE
//
//  Created by Aujla, Noorpreet on 4/12/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let weather = WeatherGetter()
        weather.getWeather(zipCode: 94105)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

