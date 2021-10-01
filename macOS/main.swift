//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation


// Generate a weather prediction
let prediction = WeatherPredictionGenerator.getPrediction()

var history: [String] = []

print ("Welcome to Weather")

while true {
print("Do you wanna know the weather?")
 
let input = readLine()!

    if input == "Yes" {
        
        var temporary = "Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C."
        
      print(temporary)
        
        //print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")

        print("That's \(prediction.feel.lowercased())!")
        
        history.append(temporary)
        
    } else if input == "No" {
       
        break
    }
 
    while true {
        
        print("wanna see history? Yes or no?")
        
        let inputTwo = readLine()!
        
        if inputTwo == "Yes" {
            
            dump(history)
       
        } else {
            
            break
            
        }
    }
    
}






// Show the prediction








