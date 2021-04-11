//
//  ViewController.swift
//  TConverter
//
//  Created by Антон Белый on 11.04.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tСelsius: UILabel!
    @IBOutlet weak var tFahrenheit: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0
            slider.value = 0
            slider.maximumValue = 100
        }
    }
    
    @IBAction func actionSlider(_ sender: UISlider) {
        let temperatureC = Int(round(sender.value))
        tСelsius.text = "\(temperatureC)ºC"
        let temperatureF = Int(round(sender.value * 9 / 5) + 32)
        tFahrenheit.text = "\(temperatureF)ºF"
    }
    
}

