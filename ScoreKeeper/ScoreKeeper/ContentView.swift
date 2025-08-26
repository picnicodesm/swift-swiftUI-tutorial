//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by picnic on 8/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [Player] = [
        Player(name: "Elisha", score: 0, color: Color.blue),
        Player(name: "Andre", score: 0, color: Color.brown),
        Player(name: "Jasmine", score: 0, color: Color.teal),
    ]
    
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach($players) { $player in
                        HStack {
                            Text("\(player.name)")
                                .foregroundStyle(player.color)
                            Spacer()
                            Text("\(player.score)")
                                .padding(.trailing, 10)
                            Stepper(value: $player.score, in: 0...20) {
                                Text("\(player.score)")
                            }
                            .labelsHidden()
                        }
                    }
                    .onMove(perform: {
                        players.move(fromOffsets: $0, toOffset: $1)
                    })
                    
                    Button("Add Player", systemImage: "plus") {
                        players.append(Player(name: " ", score: 0, color: .black))
                    }
                } header: {
                    HStack {
                        Text("Player")
                            .gridColumnAlignment(.leading)
                        Spacer()
                            .frame(width: 130)
                        Text("Score")
                    }
                    .font(.headline)
                }
                
            }
            .navigationTitle("Score Keeper")
            .toolbar {
                EditButton()
            }
        }
    }
}
#Preview {
    ContentView()
}
