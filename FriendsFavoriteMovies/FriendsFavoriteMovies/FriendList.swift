//
//  FriendList.swift
//  FriendsFavoriteMovies
//
//  Created by picnic on 8/27/25.
//

import SwiftUI
import SwiftData

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        List {
            ForEach(friends) { friend in
                Text(friend.name)
            }
        }
        .task {
            context.insert(Friend(name: "Elena"))
            context.insert(Friend(name: "Rody"))
        }
    }
}

#Preview {
    FriendList()
        .modelContainer(for: Friend.self, inMemory: true)
}
