//
//  Movie.swift
//  FriendsFavoriteMovies
//
//  Created by picnic on 8/27/25.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var releaseDate: Date
    
    init(title: String, releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
