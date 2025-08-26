//
//  Player.swift
//  ScoreKeeper
//
//  Created by picnic on 8/26/25.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    var name: String
    var score: Int
}
