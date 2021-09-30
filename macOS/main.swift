//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation


// Generate a weather prediction
let prediction = WeatherPredictionGenerator.getPrediction()

print ("Welcome to Weather")

while true {
print("Do you wanna know the weather?")
 
let input = readLine()!

    if input == "Yes" {
        
        print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")

        print("That's \(prediction.feel.lowercased())!")
        
    } else if input == "No" {
       
        break
    }
 
}






// Show the prediction








