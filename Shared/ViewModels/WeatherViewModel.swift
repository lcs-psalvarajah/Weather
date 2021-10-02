//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

class WeatherViewModel: ObservableObject {
    
    // empty array for now to store information
    @Published var history: [Prediction] = []
    
    func provideResponse() -> Prediction {
        
        let prediction = WeatherPredictionGenerator.getPrediction()
        
        // Add the answers that was givin into the empty array
       
        history.append(prediction)
        
        return prediction
    }
    
    
   
}
