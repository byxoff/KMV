//
//  loginPage.swift
//  kmv-telekom
//
//  Created by Alexey Sergeev on 30.07.2021.
//

import SwiftUI

extension View {
    func endEditing(_ force: Bool) {
        UIApplication.shared.windows.forEach { $0.endEditing(force)}
    }
}
