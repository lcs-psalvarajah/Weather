//
//  ContentView.swift
//  iOS
//
//  Created by Salvarajah, Prajina on 2021-10-02.
//

import SwiftUI
//import Weather

struct ContentView: View {
    
    // Make an instance of the view model to store weather prediction
    @StateObject private var forecast = WeatherViewModel()
    
    // Stores the response to the given question
    @State private var output = ""
    
    
    var body: some View {
        VStack {
            
            // Advice given
            HStack {
                VStack(alignment: .leading) {
                    Text("**NOTE:**")
                    Text("Questions should be phrased in such that they can be answered with a yes or no response.")
                }
                Spacer()
            }

            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
       
