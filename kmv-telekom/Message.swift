//
//  loginPage.swift
//  kmv-telekom
//
//  Created by Alexey Sergeev on 30.07.2021.
//

import Foundation

struct Message: Hashable {
    var content: String
    var user: User
}

struct DataSource {
    static let firstUser = User(name: "Техническая поддержка", avatar: "techAvatar")
    static var secondUser = User(name: "Алексей Сергеев", avatar: "avatar", isCurrentUser: true)
    static let messages = [
        Message(content: "Добрый день, чем могу помочь?", user: DataSource.firstUser)
    ]
}
