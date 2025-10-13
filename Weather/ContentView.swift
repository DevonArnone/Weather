//
//  ContentView.swift
//  Weather
//
//  Created by Devon Arnone on 10/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Chapel Hill")
            Text("55°")
            Text("Sunny")
            Text("H:58° L:43°")
            HStack {
                
            }
        }
        .padding()
    }
}

struct HourlyForecastView: Identifiable {
    var time: String
    var icon: String
    var temperature: String
    
    var body: some View {
        HStack {
            Text(time)
            
        }
    }
}


#Preview {
    ContentView()
}
