//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation


// empty array for now to store information
var forecast = WeatherViewModel()


//print welcome
print ("Welcome to Weather")

while true {
    print("Do you wanna know the weather?")
    
    let input = readLine()!
    
    if input == "Yes" {
        
        // Generate a weather prediction
        let prediction = forecast.getPrediction()
        
        // print out the answers
        print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
                
        print("That's \(prediction.feel.lowercased())!")
        

        
    } else if input == "No" {
        
        break
    }
 
    // To show the history view
    while true {
        
        print("wanna see history? Yes or no?")
        
        let inputTwo = readLine()!
        
        // print out hwat is within the array
        if inputTwo == "Yes" {
            for record in forecast.history {
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








