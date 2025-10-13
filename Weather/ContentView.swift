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
            Forecast(time: "4PM", icon: "sun.max.fill", temperature: "55°"),
            Forecast(time: "5PM", icon: "sun.max.fill", temperature: "56°"),
            Forecast(time: "6PM", icon: "sun.max.fill", temperature: "58°")

        ]
        
        let weeklyData: [WeekForecast] = [
            WeekForecast(day: "Today", icon: "cloud.fill", temperature1: "48°", temperature2: "58°"),
            WeekForecast(day: "Mon", icon: "sun.max.fill", temperature1: "50°", temperature2: "64°"),
            WeekForecast(day: "Tue", icon: "cloud.drizzle.fill", temperature1: "46°", temperature2: "53°"),
            WeekForecast(day: "Wed", icon: "cloud.rain.fill", temperature1: "44°", temperature2: "51°"),
            WeekForecast(day: "Thu", icon: "sun.max.fill", temperature1: "49°", temperature2: "66°"),
            WeekForecast(day: "Fri", icon: "cloud.fill", temperature1: "47°", temperature2: "55°"),
            WeekForecast(day: "Sat", icon: "snow", temperature1: "24°", temperature2: "34°"),
            WeekForecast(day: "Sun", icon: "snow", temperature1: "22°", temperature2: "33°"),
            WeekForecast(day: "Mon", icon: "sun.max.fill", temperature1: "45°", temperature2: "60°"),
            WeekForecast(day: "Tue", icon: "cloud.fill", temperature1: "43°", temperature2: "52°"),
        ]
        
        ZStack {
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack(spacing: 10) {
                Text("Chapel Hill")
                    .font(.system(size: 34, weight: .light))
                Text("55°")
                    .font(.system(size: 75, weight: .thin))
                Text("Sunny")
                    .font(.title2)
                Text("H:58° L:50°")
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.8))
                
                VStack(alignment: .leading) {
                    HStack{
                        Image(systemName: "clock")
                        Text("Hourly Forecast")
                    }
                    .font(.headline)
                    .padding(.bottom, 5)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach (hourlyData) { item in
                                HourlyForecastView(
                                    time: item.time,
                                    icon: item.icon,
                                    temperature: item.temperature
                                )
                            }
                        }
                        .padding(.horizontal)
                    }
                    .frame(maxWidth: .infinity)
                }
                .padding()
                .background(Color.blue.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.vertical, 10)
                
                VStack(alignment: .leading) {
                    HStack{
                        Image(systemName: "calendar")
                        Text("10-Day Forecast")
                    }
                    .font(.headline)
                    .padding(.bottom, 5)
                    
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
                .padding()
                .background(Color.blue.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.vertical, 10)
            }
            .foregroundStyle(.white)
            .padding(.horizontal)
            .padding()
        }
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
                .symbolRenderingMode(.multicolor)
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
                .symbolRenderingMode(.multicolor)
            Text(temperature1)
            Text(temperature2)
            
        }
    }
}


#Preview {
    ContentView()
}
