//
//  Support.swift
//  kmv-telekom
//
//  Created by Иван Обухов on 05.11.2021.
//

import SwiftUI

struct Support: View {
    var body: some View {
        GeometryReader{geometry in
            ScrollView(.vertical, showsIndicators: false) {
                   VStack(spacing: 20) {
                    VStack {
                        HStack{
                            Text("ГОРЯЧАЯ ЛИНИЯ").font(.system(size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontColor"))
                                .padding(.leading, 40.0)
                            Spacer()
                        }.frame(width: geometry.size.width, height: 105)
                        .background(Image("title1").resizable().scaledToFill())
                        cardPhoneNumber()
                            .padding(.vertical, 20.0)
                            .frame(height: 175.0)
                        Spacer().frame(height:20)
                    }
                    VStack {
                        HStack{
                            Text("АБОНЕНТСКИЙ ОТДЕЛ").font(.system(size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontColor"))
                                .padding(.leading, 40.0)
                            Spacer()
                        }.frame(width: geometry.size.width, height: 105)
                        .background(Image("title2").resizable().scaledToFill())
                        VStack {
                            Text("Вопросы абонентского обслуживания, тарифы и оплата, доступ в личный кабинет").font(.system(size: 14))
                                .foregroundColor(Color("profileColor"))
                            .padding(.vertical, 20.0)
                            HStack {
                                WriteButton()
                                Spacer()
                            }
                            .padding(.horizontal, 20.0)
                        }.frame(height: 175.0)
                        Spacer().frame(height:20)
                    }
                    HStack{
                        Text("ТЕХНИЧЕСКИЙ ОТДЕЛ").font(.system(size: 24))
                            .fontWeight(.bold)
                            .foregroundColor(Color("fontColor"))
                            .padding(.leading, 40.0)
                        Spacer()
                    }.frame(width: geometry.size.width, height: 105)
                    .background(Image("title3").resizable().scaledToFill())
                       VStack {
                           Text("Техническая консультация, вопросы качества связи, устранения неполадок").font(.system(size: 14))
                               .foregroundColor(Color("profileColor"))
                           .padding(.vertical, 20.0)
                           HStack {
                               WriteButton()
                               Spacer()
                           }
                           .padding(.horizontal, 20.0)
                       }.frame(height: 175.0)
                    Spacer().frame(height:20)
                   }.frame(height: 1000)
            }
        }
        
    }
}

struct Support_Previews: PreviewProvider {
    static var previews: some View {
        Support()
    }
}

struct cardPhoneNumber: View {
    var body: some View {
        GeometryReader{geometry in
            VStack (alignment: .center) {
                HStack {
                    Text("+7 (8652) 53-53-53")
                        .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                        .font(.title2)
                }
                .padding([.top, .leading, .trailing], 20.0)

                HStack{
                    Spacer()
                    CallButton()
                    Spacer()
                }
                .padding(.all, 20.0)
               
            }
            
            .frame(width: geometry.size.width - 40)
            
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8392156863, green: 0.8901960784, blue: 0.9529411765, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(25)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/ .opacity(0.3), radius: 20, x: 10, y: 20)
            .padding(.horizontal, 20.0)
        }

        }
    }

struct CallButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Позвонить").font(.system(size: 16)).fontWeight(.medium).foregroundColor(.white).padding(.leading, 15.0)
            Image("Call").font(.system(size: 16)).foregroundColor(.white).padding(.trailing, 15.0)
        }.frame(width: 188.0, height: 60.0)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6784313725, green: 0.2745098039, blue: 0.5568627451, alpha: 1)), Color(#colorLiteral(red: 0.5490196078, green: 0.2941176471, blue: 0.6235294118, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        .cornerRadius(68.0)
    }
}

struct WriteButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Написать").font(.system(size: 16)).fontWeight(.medium).foregroundColor(.white).padding(.leading, 15.0)
            Image("Write").font(.system(size: 16)).foregroundColor(.white).padding(.trailing, 15.0)
        }.frame(width: 188.0, height: 60.0)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6784313725, green: 0.2745098039, blue: 0.5568627451, alpha: 1)), Color(#colorLiteral(red: 0.5490196078, green: 0.2941176471, blue: 0.6235294118, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        .cornerRadius(68.0)
    }
}
