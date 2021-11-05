//
//  loginPage.swift
//  kmv-telekom
//
//  Created by Alexey Sergeev on 30.07.2021.
//

import Foundation

struct User: Hashable {
    var name: String
    var avatar: String
    var isCurrentUser: Bool = false
}
