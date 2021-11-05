//
//  loginPage.swift
//  kmv-telekom
//
//  Created by Alexey Sergeev on 30.07.2021.
//

import SwiftUI

struct ContentMessageView: View {
    var contentMessage: String
    var isCurrentUser: Bool
    
    var body: some View {
        Text(contentMessage)
            .padding(10)
            .foregroundColor(isCurrentUser ? Color("profileColor") : Color("profileColor"))
            .background(isCurrentUser ? Color("messageDark") : Color("messageLight"))
            .cornerRadius(10)
    }
}

struct ContentMessageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentMessageView(contentMessage: "Hi, I am your friend", isCurrentUser: false)
    }
}
