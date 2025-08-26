//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by picnic on 8/26/25.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {

    @Test("Reset player scores", arguments: [0, 10, 20]) // short description of test
    func resetScores(to newValue: Int) async throws {
        var scoreboard = Scoreboard(players: [
            Player(name: "Elihsa", score: 0, color: .blue),
            Player(name: "Andre", score: 5, color: .brown)
        ])
        
        scoreboard.resetScores(to: newValue)
        
        for player in scoreboard.players {
            #expect(player.score == newValue)
        }
    }
    
    @Test("Highest score wins")
    func highestScoreWins() {
        let scoreboard = Scoreboard(
            players: [
                Player(name: "Elihsa", score: 0, color: .blue),
                Player(name: "Andre", score: 4, color: .brown)
            ],
            state: .gameOver,
            doesHighestScoreWin: true
        )
        
        let winners = scoreboard.winners
        #expect(winners == [Player(name: "Andre", score: 4, color: .brown)])
    }
    
    @Test("Lowest score wins")
    func lowestScoreWins() {
        let scoreboard = Scoreboard(
            players: [
                Player(name: "Elihsa", score: 0, color: .blue),
                Player(name: "Andre", score: 4, color: .brown)
            ],
            state: .gameOver,
            doesHighestScoreWin: false
        )
        
        let winners = scoreboard.winners
        #expect(winners == [Player(name: "Elihsa", score: 0, color: .blue)])
    }

}
