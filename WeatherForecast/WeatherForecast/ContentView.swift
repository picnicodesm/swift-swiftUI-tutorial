//
//  ContentView.swift
//  WeatherForecast
//
//  Created by picnic on 8/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                
                DayForecast(day: "Wed", isRainy: false, high: 60, low: 50)
                
                DayForecast(day: "Thu", isRainy: false, high: 90, low: 65)
                
                DayForecast(day: "Fri", isRainy: false, high: 80, low: 60)
                
                DayForecast(day: "Say", isRainy: false, high: 60, low: 40)
                
                DayForecast(day: "Sun", isRainy: true, high: 55, low: 30)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        // font는 의미를 포함하는 수정자이고 fontWeight은 의미를 포함하지 않는 수정자이다.
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.largeTitle)
                .padding(5)
            HStack(spacing: 0) {
                Text("High: ")
                Text("\(high)")
                    .foregroundStyle(high > 80 ? Color.red : Color.black)
            }
            .fontWeight(Font.Weight.semibold)
            HStack(spacing: 0) {
                Text("Low: ")
                Text("\(low)")
                    .foregroundStyle(low < 60 ? Color.green : Color.black)
            }
            .fontWeight(Font.Weight.medium)
        }
        .padding()
        .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
        .shadow(radius: 6)
    }
}
