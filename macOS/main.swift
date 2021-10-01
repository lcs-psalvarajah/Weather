//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation


// Generate a weather prediction

var history: [Prediction] = []

print ("Welcome to Weather")

while true {
    print("Do you wanna know the weather?")
    
    let input = readLine()!
    
    if input == "Yes" {
        
        // Generate a weather prediction
        let prediction = WeatherPredictionGenerator.getPrediction()
        
        //        var temporary = "Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C."
        
        print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
        
        //print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
        
        print("That's \(prediction.feel.lowercased())!")
        
        history.append(prediction)
        
    } else if input == "No" {
        
        break
    }
    
    while true {
        
        print("wanna see history? Yes or no?")
        
        let inputTwo = readLine()!
        
        if inputTwo == "Yes" {
            for record in history {
                print("\(String(format: "%.1f", arguments: [record.temperature]))")
                print(record.condition.description)
                print(record.feel)
            }
            break
            
        } else {
            
            break
            
        }
    }
    
}






// Show the prediction








