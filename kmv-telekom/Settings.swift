//
//  settings.swift
//  kmv-telekom
//
//  Created by Alexey Sergeev on 27.07.2021.
//


import SwiftUI

struct SettingsView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("Отдел оплаты находится в разработке").foregroundColor(Color("profileColor"))
                Spacer()
            }
            Spacer()
        }.ignoresSafeArea(.all)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
