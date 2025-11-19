# 🌤 Weather App (SwiftUI)

A simple, elegant weather UI mockup built with SwiftUI, showing hourly and 10-day forecasts for Chapel Hill using static sample data.

This project focuses on layout, SF Symbols, gradients, and reusable view components.

## 🚀 Overview

The app displays:
	•	Current location, temperature, and conditions
	•	Hourly forecast in a horizontal scroll
	•	10-day forecast in a vertical list
	•	Visual temperature “bars” for each day

All data is hard-coded, making this a great UI sandbox project without worrying about networking.

## 🌈 Features

📍 Current Conditions
	•	City name: Chapel Hill
	•	Big temperature label (55°)
	•	Condition text (“Sunny”)
	•	High/low summary (H:58° L:50°)

🕒 Hourly Forecast
	•	Horizontally scrollable ScrollView
	•	Custom HourlyForecastView component
	•	Shows:
	•	Time label (Now, 1PM, etc.)
	•	Weather SF Symbol (sun.max.fill, cloud.sun.fill)
	•	Temperature

📅 10-Day Forecast
	•	Vertical list of days using WeekForecastView
	•	Shows:
	•	Day (Today, Mon, Tue, etc.)
	•	Condition icon
	•	Low and high temperature
	•	A simple bar visual representing range

🎨 Design & Styling
	•	Background LinearGradient from blue to white
	•	White foreground text layered above
	•	Rounded rectangle cards with blue-tinted backgrounds for forecast sections
	•	Multicolor SF Symbols for icons

## 📂 Project Structure

Weather/
│── ContentView.swift        // Main UI & sample data
│── WeatherApp.swift         // App entry point
│
├── Assets.xcassets/
│   ├── AppIcon.appiconset
│   └── AccentColor.colorset


## 📱 How to Run
	1.	Open the project in Xcode 15+
	2.	Select an iOS Simulator (e.g., iPhone 15)
	3.	Press Run (⌘ + R)
	4.	You’ll see the Chapel Hill weather UI with hourly + 10-day data

## 🧭 Future Roadmap

🌐 Real Weather Data
	•	Integrate a weather API (e.g., OpenWeather)
	•	Decode JSON into Forecast and WeekForecast structs
	•	Make the location dynamic instead of hard-coded

📍 Location Awareness
	•	Use CoreLocation to pull the user’s city
	•	Display current city name based on coordinates

📊 Better Visualizations
	•	Dynamic temperature bar width based on actual min/max
	•	Color bars based on temperature (blue for cold, red for hot)

🌙 Dark Mode & Themes
	•	Tailor gradient and card colors for dark mode
	•	Let the user choose custom theme colors

🧾 Additional Details
	•	Add wind, humidity, and “feels like” info
	•	Add per-day detail screens with more data
