//
//  first.swift
//  kmv-telekom
//
//  Created by Alexey Sergeev on 27.07.2021.
//

import SwiftUI

struct first: View {
    var body: some View {
        ZStack {
            Image("background1")
            VStack {
                Image("logoload")  
            }
        }
        
    }
}

struct first_Previews: PreviewProvider {
    static var previews: some View {
        first()
    }
}
