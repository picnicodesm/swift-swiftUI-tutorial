//
//  ContentView.swift
//  ChatPrototype
//
//  Created by picnic on 8/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Knock Knock!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
            Text("Who's There?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))

            VStack {
                HStack {
                    Text("Cool")
                        .padding()
                        .background(Color.mint, in: RoundedRectangle(cornerRadius: 8))
                    Text("Game")
                        .padding()
                        .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))
                    Text("Cook")
                        .padding()
                        .background(Color.red, in: RoundedRectangle(cornerRadius: 8))
                }
                .padding()
                .background(Color.cyan, in: .capsule)
                
                HStack {
                    Text("Together")
                        .padding()
                        .background(Color.gray, in: RoundedRectangle(cornerRadius: 8))
                    Text("Movie")
                        .padding()
                        .background(Color.purple, in: RoundedRectangle(cornerRadius: 8))
                    Text("Night")
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(Color.black, in: RoundedRectangle(cornerRadius: 8))
                }
                .padding()
                .background(Color.cyan, in: .buttonBorder)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
