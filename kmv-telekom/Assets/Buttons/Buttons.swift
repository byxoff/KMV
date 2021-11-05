//
//  Buttons.swift
//  kmv-telekom
//
//  Created by Admin on 01.09.2021.
//

import SwiftUI

struct buttons: View {
    var body: some View {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                GradientButton()
                GreyStrokeButton()
                PurpleStrokeButton()
                PurpleOpacityButton()
                PurpleButton()
            }.padding(.horizontal)
    }
}



struct GradientButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Подключить").font(.system(size: 16)).fontWeight(.medium).foregroundColor(.white).padding(.leading, 15.0)
            Image(systemName: "arrow.right").font(.system(size: 16)).foregroundColor(.white).padding(.trailing, 15.0)
        }.frame(width: 188.0, height: 60.0)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6784313725, green: 0.2745098039, blue: 0.5568627451, alpha: 1)), Color(#colorLiteral(red: 0.5490196078, green: 0.2941176471, blue: 0.6235294118, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        .cornerRadius(68.0)
    }
}

struct GreyStrokeButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Телефония").font(.system(size: 16)).fontWeight(.medium).foregroundColor(Color(#colorLiteral(red: 0.4666666667, green: 0.5568627451, blue: 0.6823529412, alpha: 1))).padding(.horizontal, 15.0)
        }
        .frame(width: 188.0, height: 60.0)
        .overlay(
                RoundedRectangle(cornerRadius: 68)
                    .stroke(Color(#colorLiteral(red: 0.4666666667, green: 0.5568627451, blue: 0.6823529412, alpha: 1)), lineWidth: 2)
            )
    }
}

struct PurpleStrokeButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Подключить").font(.system(size: 16)).fontWeight(.medium).foregroundColor(Color(#colorLiteral(red: 0.5490196078, green: 0.2941176471, blue: 0.6235294118, alpha: 1))).padding(.horizontal, 15.0)
        }
        .frame(width: 188.0, height: 60.0)
        .overlay(
                RoundedRectangle(cornerRadius: 68)
                    .stroke(Color(#colorLiteral(red: 0.5490196078, green: 0.2941176471, blue: 0.6235294118, alpha: 1)), lineWidth: 2)
            )
    }
}
struct PurpleButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Text("IP-TV").font(.system(size: 16)).fontWeight(.medium).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding(.horizontal, 15.0)
        }
        .frame(width: 188.0, height: 60.0)
        .background(Color(#colorLiteral(red: 0.5803921569, green: 0.2901960784, blue: 0.6078431373, alpha: 1)))
        .cornerRadius(68.0)
        .overlay(
                RoundedRectangle(cornerRadius: 68)
                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2)
            )
    }
}
struct PurpleOpacityButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Подключить").font(.system(size: 16)).fontWeight(.medium).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding(.horizontal, 15.0)
        }
        .frame(width: 188.0, height: 60.0)
        .background(Color(#colorLiteral(red: 0.6784313725, green: 0.2745098039, blue: 0.5568627451, alpha: 0.6)))
        .cornerRadius(68.0)
        .overlay(
                RoundedRectangle(cornerRadius: 68)
                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2)
            )
    }
}

struct buttons_Previews: PreviewProvider {
    static var previews: some View {
        buttons()
    }
}
