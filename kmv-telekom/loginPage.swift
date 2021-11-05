//
//  loginPage.swift
//  kmv-telekom
//
//  Created by Alexey Sergeev on 30.07.2021.
//

import SwiftUI

struct loginPage: View {
    @State private var isPresented = false
    var body: some View {
            VStack{
                Spacer()
                Spacer()
                HStack  {
                    Image(systemName: "multiply")
                        .padding(.trailing, 20.0)
                        .font(.system(size: 21))
                        .foregroundColor(.white)
                    Text("Авторизация").font(.system(size: 21)).fontWeight(.medium)
                        .foregroundColor(.white)
                    
                }.frame( width: 300, alignment: .leading)
                Spacer()
                ExtractedView()
                Spacer()
                HStack{
                    Button("Заявка на подключение") {
                        isPresented.toggle()
                    }.fullScreenCover(isPresented: $isPresented, content: applicationView.init)
                    .frame(width: 253.0, height: 60.0)
                    .foregroundColor(.white)
                    .background(Color(#colorLiteral(red: 0.5803921569, green: 0.2901960784, blue: 0.6078431373, alpha: 1)))
                    .cornerRadius(68.0)
                    .overlay(
                    RoundedRectangle(cornerRadius: 68)
                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2)
                        )
                }
                .padding(.top, 35.0)
                Spacer()
                Spacer()
            }.background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6784313725, green: 0.2745098039, blue: 0.5568627451, alpha: 1)), Color(#colorLiteral(red: 0.5490196078, green: 0.2941176471, blue: 0.6235294118, alpha: 1))]), startPoint: .bottomTrailing, endPoint: .topLeading))
            .ignoresSafeArea(.all)
        
    }
}

struct loginPage_Previews: PreviewProvider {
    static var previews: some View {
        loginPage()
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}

struct ExtractedView: View {
    @State private var isPresented = false
    var body: some View {
        
        GeometryReader { geometry in
            VStack(alignment: .center){
                VStack{

                    HStack {
                        VStack{
                         Menu{
                                Text("Автоматическая аутентификация")
                                Text("Войти по номеру договора")
                                Text("Войти по логину интернет")
                            }label: {
                                Text("Автоматическая аутентификация").font(.system(size: 15)).fontWeight(.medium)
                                Image(systemName: "chevron.down")
                            }
                            .foregroundColor((Color("phoneColor")))
                        }
                    }
                    .padding(.top, 91.0)
                    .padding(.bottom, 82.0)
                    TextField("Логин Интернет", text: .constant(""))
                        .foregroundColor(Color("logColor"))
                        .padding(.top, 10.0)
                        .accentColor(Color.green)
                        .frame(width: geometry.size.width - 80, alignment: .bottom)
                    Rectangle()
                        .frame(width: geometry.size.width - 80, height: 2, alignment: .bottom)
                        .foregroundColor((Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1))))
                    SecureField("Пароль", text: .constant(""))
                        .foregroundColor(Color("logColor"))
                        .padding(.top, 10.0)
                        .accentColor(Color.green)
                        .frame(width: geometry.size.width - 80, alignment: .bottom)
                    Rectangle()
                        .frame(width: geometry.size.width - 80, height: 2, alignment: .bottom)
                        .foregroundColor((Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1))))
                    Spacer().frame(height: 20)
                    HStack{
                        Link("Забыли пароль?", destination: URL(string: "https://")!)
                            .font(.system(size: 13))
                            .foregroundColor(Color("logColor"))
                        Spacer()
                    }
                    .padding(.bottom, 85.0)
                    .frame(width: geometry.size.width - 80)
                    Button(action: { isPresented.toggle()
                        
                    }) {
                        Text("Войти").font(.system(size: 16)).fontWeight(.medium).foregroundColor(.white).padding(.leading, 15.0)
                        Image(systemName: "arrow.right").font(.system(size: 16)).foregroundColor(.white).padding(.trailing, 15.0)
                    }.fullScreenCover(isPresented: $isPresented, content: ContentView.init)
                    .padding()
                    .frame(width: 157.0, height: 60.0)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6784313725, green: 0.2745098039, blue: 0.5568627451, alpha: 1)), Color(#colorLiteral(red: 0.5490196078, green: 0.2941176471, blue: 0.6235294118, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .cornerRadius(68.0)
                    Spacer()
                }
                .frame(width: geometry.size.width)
                .background(Color("fontColor"))
                .cornerRadius(60, corners: [.topRight, .bottomLeft])
                .shadow(radius: 30)
            }
        }
        .frame(height: 520.0)
    }
}
