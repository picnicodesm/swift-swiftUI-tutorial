//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by picnic on 8/27/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
