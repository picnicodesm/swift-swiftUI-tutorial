//
//  Scoreboard.swift
//  ScoreKeeper
//
//  Created by picnic on 8/26/25.
//

import Foundation
import SwiftUI

struct Scoreboard {
    var players: [Player] = [
        Player(name: "Elisha", score: 0, color: Color.blue),
        Player(name: "Andre", score: 0, color: Color.brown),
        Player(name: "Jasmine", score: 0, color: Color.teal),
    ]
    
    var state = GameState.setup
    
    mutating func resetScores(to newValue: Int) {
        for index in 0..<players.count {
            players[index].score = newValue
        }
    }
}
