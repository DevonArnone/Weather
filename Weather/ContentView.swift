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

struct WeekForecast: Identifiable {
    var id = UUID()
    var day: String
    var icon: String
    var temperature1: String
    var temperature2: String
}

struct ContentView: View {
    var body: some View {
        
        let hourlyData: [Forecast] = [
            Forecast(time: "Now", icon: "sun.max.fill", temperature: "55°"),
            Forecast(time: "1PM", icon: "sun.max.fill", temperature: "57°"),
            Forecast(time: "2PM", icon: "sun.max.fill", temperature: "58°"),
            Forecast(time: "3PM", icon: "cloud.sun.fill", temperature: "52°"),
            Forecast(time: "4PM", icon: "sun.max.fill", temperature: "55°")
        ]
        
        let weeklyData: [WeekForecast] = [
            WeekForecast(day: "Today", icon: "cloud.fill", temperature1: "50°", temperature2: "52°"),
            WeekForecast(day: "Mon", icon: "sun.max.fill", temperature1: "52°", temperature2: "50°"),
            WeekForecast(day: "Tue", icon: "cloud.drizzle", temperature1: "54°", temperature2: "48°"),
            WeekForecast(day: "Wed", icon: "cloud.rain", temperature1: "56°", temperature2: "48°"),
            WeekForecast(day: "Thu", icon: "sun.max.fill", temperature1: "58°", temperature2: "48°"),
            WeekForecast(day: "Fri", icon: "cloud.fill", temperature1: "50°", temperature2: "48°"),
            WeekForecast(day: "Sat", icon: "snow", temperature1: "52°", temperature2: "48°"),
            WeekForecast(day: "Sat", icon: "snow", temperature1: "52°", temperature2: "48°"),
            WeekForecast(day: "Sat", icon: "sun.max.fill", temperature1: "52°", temperature2: "48°"),
            WeekForecast(day: "Sat", icon: "cloud.fill", temperature1: "52°", temperature2: "48°"),
        ]
        
        VStack {
            Text("Chapel Hill")
            Text("55°")
            Text("Sunny")
            Text("H:58° L:50°")
            
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "clock")
                    Text("Hourly Forecast")
                }
                
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
            
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "calendar")
                    Text("10-Day Forecast")
                }
                
                VStack {
                    ForEach (weeklyData) { item in
                        WeekForecastView(
                            day: item.day,
                            icon: item.icon,
                            temperature1: item.temperature1,
                            temperature2: item.temperature2
                        )
                    }
                }
            }
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

struct WeekForecastView: View {
    var day: String
    var icon: String
    var temperature1: String
    var temperature2: String
    
    var body: some View {
        HStack {
            Text(day)
            Image(systemName: icon)
            Text(temperature1)
            Text(temperature2)
            
        }
    }
}


#Preview {
    ContentView()
}
