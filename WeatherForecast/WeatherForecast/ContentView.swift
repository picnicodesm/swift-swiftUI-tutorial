//
//  ContentView.swift
//  WeatherForecast
//
//  Created by picnic on 8/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack {
                Text("Mon")
                Image(systemName: "sun.max.fill")
                    .foregroundStyle(Color.yellow)
                Text("High: 70")
                Text("Low: 50")
            }
            
            VStack {
                Text("Mon")
                Image(systemName: "cloud.rain.fill")
                    .foregroundStyle(Color.blue)
                Text("High: 60")
                Text("Low: 40")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
