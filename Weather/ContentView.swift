//
//  ContentView.swift
//  Weather
//
//  Created by Devon Arnone on 10/11/25.
//

import SwiftUI

struct Forecast: Identifiable {
    var id = UUID()
    var time: String
    var icon: String
    var temperature: String
}

struct ContentView: View {
    var body: some View {
        let hourlyData: [Forecast] = [
            Forecast(time: "Now", icon: "sun.max.fill", temperature: "55°"),
            Forecast(time: "1PM", icon: "sun.max.fill", temperature: "57°"),
            Forecast(time: "2PM", icon: "sun.max.fill", temperature: "58°"),
            Forecast(time: "3PM", icon: "sun.max.fill", temperature: "57°"),
            Forecast(time: "4PM", icon: "sun.max.fill", temperature: "56°")
        ]
        
        VStack {
            Text("Chapel Hill")
            Text("55°")
            Text("Sunny")
            Text("H:58° L:43°")
            
            VStack(alignment: .leading) {
                Text("Hourly Forecast")
                
                HStack {
                    ForEach (hourlyData) { item in
                        HourlyForecastView(
                            time: item.time,
                            icon: item.icon,
                            temperature: item.temperature
                        )
                    }
                }
            }
            .background(Color.blue.opacity(0.6))
        }
        .padding()
        .background(
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
}

struct HourlyForecastView: View {
    var time: String
    var icon: String
    var temperature: String
    
    var body: some View {
        VStack {
            Text(time)
            Image(systemName: icon)
            Text(temperature)
            
        }
    }
}


#Preview {
    ContentView()
}
