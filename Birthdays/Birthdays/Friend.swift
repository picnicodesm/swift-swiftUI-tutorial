//
//  Friend.swift
//  Birthdays
//
//  Created by picnic on 8/27/25.
//

import Foundation
import SwiftData
// SwiftData는 앱의 데이터를 모델링하고 지속성을 사용하여 데이터를 저장하여 누군가가 앱을 떠날 때 사라지지 않도록 하는 도구를 제공합니다.

@Model
class Friend {
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
}
