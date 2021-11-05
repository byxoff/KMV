//
//  Phone.swift
//  kmv-telekom
//
//  Created by Admin on 03.09.2021.
//

import SwiftUI

struct Phone: View {
    var body: some View {
        
                ScrollView(.vertical, showsIndicators: false) {
                    GeometryReader { geometry in
                    VStack{
                        HStack {
                            VStack{
                                HStack {
                                    Text("ТЕЛЕФОНИЯ")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("phoneColor"))
                                        .font(.system(size: 21))
                                    Spacer()
                                }
                                .padding(.horizontal, 20.0)
                            }
                        }
                        .padding(.top, 50.0)
                        .padding(.bottom, 50.0)
                        cardPhone()
                            .padding(.vertical, 20.0)
                            .frame(height: 245.0)
                        Spacer().frame(height:100)
                        cardETTH()
                            .padding(.vertical, 20.0)
                            .frame(height: 245.0)
                        Spacer().frame(height:100)
                        cardPhoneGpon()
                            .padding(.vertical, 20.0)
                            .frame(height: 245.0)
                        Spacer().frame(height:100)
                        VStack {
                            cardMobile()
                                .padding(.vertical, 20.0)
                                .frame(height: 245.0)
                            Spacer().frame(height:100)
                        }
                        VStack{
                            cardFixed()
                                .padding(.vertical, 20.0)
                                .frame(height: 245.0)
                            Spacer().frame(height:150)
                        }
                        
                    }.frame(width: geometry.size.width)
                    .background(Color("fontColor"))
                    .cornerRadius(60, corners: [.topRight])
                
                    }.frame(height: 1850)
            
        }
        
    }
}

struct Phone_Previews: PreviewProvider {
    static var previews: some View {
        Phone()
    }
}

struct cardETTH: View {
    var body: some View {
        GeometryReader{card in
            VStack (alignment: .center) {
                HStack {
                    Text("Ежемесячная абонентская плата").fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                        .font(.title2)
                        .padding(.leading, 10.0)
                    Spacer()
                    Button(action: {
                        //
                    }, label: {
                        Image("pointer")
                    })
                }
                .padding([.top, .leading, .trailing], 20.0)
                HStack {
                    VStack {
                        Text("При подключении по технологии ETTH").fixedSize(horizontal: false, vertical: true).font(.system(size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 40.0)
                            .frame(width: (card.size.width / 2), alignment: .leading)
                      
                    }.frame(width: (card.size.width / 2)-20)
                    Spacer()
                        .frame(height: 70.0)
                    Text("250₽/мес")
                        .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                        .font(.title)
                        .multilineTextAlignment(.trailing)
                        .frame(width: (card.size.width / 2)-40)
                }.frame(width: card.size.width - 40)
                HStack{
                    Spacer()
                    GradientButton()
                }
                .padding(.all, 20.0)
               
            }
            
            .frame(width: card.size.width - 40)
            
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8392156863, green: 0.8901960784, blue: 0.9529411765, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(25)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/ .opacity(0.3), radius: 20, x: 10, y: 20)
            .padding(.horizontal, 20.0)
        }

        }
    }

struct cardPhoneGpon: View {
    var body: some View {
        GeometryReader{card in
            VStack (alignment: .center) {
                HStack {
                    Text("Ежемесячная абонентская плата").fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                        .font(.title2)
                        .padding(.leading, 10.0)
                    Spacer()
                    Button(action: {
                        //
                    }, label: {
                        Image("pointer")
                    })
                }
                .padding([.top, .leading, .trailing], 20.0)
                HStack {
                    VStack {
                        Text("При подключении по технологии GPON").fixedSize(horizontal: false, vertical: true).font(.system(size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 40.0)
                            .frame(width: (card.size.width / 2), alignment: .leading)
                      
                    }.frame(width: (card.size.width / 2)-20)
                    Spacer()
                        .frame(height: 70.0)
                    Text("100₽/мес")
                        .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                        .font(.title)
                        .multilineTextAlignment(.trailing)
                        .frame(width: (card.size.width / 2)-40)
                }.frame(width: card.size.width - 40)
                HStack{
                    Spacer()
                    GradientButton()
                }
                .padding(.all, 20.0)
               
            }
            
            .frame(width: card.size.width - 40)
            
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8392156863, green: 0.8901960784, blue: 0.9529411765, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(25)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/ .opacity(0.3), radius: 20, x: 10, y: 20)
            .padding(.horizontal, 20.0)
        }

        }
    }

struct cardMobile: View {
    var body: some View {
        GeometryReader{card in
            VStack (alignment: .center) {
                HStack {
                    Text("Звонки на мобильные номера").fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                        .font(.title2)
                        .padding(.leading, 10.0)
                    Spacer()
                    Button(action: {
                        //
                    }, label: {
                        Image("pointer")
                    })
                }
                .padding([.top, .leading, .trailing], 20.0)
                HStack {
                    VStack {
                        Text("На мобильные номера Ставропольского края").fixedSize(horizontal: false, vertical: true).font(.system(size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 40.0)
                            .frame(width: (card.size.width / 2), alignment: .leading)
                      
                    }.frame(width: (card.size.width / 2)-20)
                    Spacer()
                        .frame(height: 70.0)
                    Text("2,20₽/мин")
                        .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                        .font(.title)
                        .multilineTextAlignment(.trailing)
                        .frame(width: (card.size.width / 2)-40)
                }.frame(width: card.size.width - 40)
                HStack{
                    Spacer()
                    GradientButton()
                }
                .padding(.all, 20.0)
               
            }
            
            .frame(width: card.size.width - 40)
            
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8392156863, green: 0.8901960784, blue: 0.9529411765, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(25)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/ .opacity(0.3), radius: 20, x: 10, y: 20)
            .padding(.horizontal, 20.0)
        }

        }
    }

struct cardFixed: View {
    var body: some View {
        GeometryReader{card in
            VStack (alignment: .center) {
                HStack {
                    Text("Звонки на фиксированные номера").fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                        .font(.title2)
                        .padding(.leading, 10.0)
                    Spacer()
                    Button(action: {
                        //
                    }, label: {
                        Image("pointer")
                    })
                }
                .padding([.top, .leading, .trailing], 20.0)
                HStack {
                    VStack {
                        Text("На фиксированные номера Ставропольского края").fixedSize(horizontal: false, vertical: true).font(.system(size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 40.0)
                            .frame(width: (card.size.width / 2), alignment: .leading)
                      
                    }.frame(width: (card.size.width / 2)-20)
                    Spacer()
                        .frame(height: 70.0)
                    Text("1,80₽/мин")
                        .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                        .font(.title)
                        .multilineTextAlignment(.trailing)
                        .frame(width: (card.size.width / 2)-40)
                }.frame(width: card.size.width - 40)
                HStack{
                    Spacer()
                    GradientButton()
                }
                .padding(.all, 20.0)
               
            }
            
            .frame(width: card.size.width - 40)
            
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8392156863, green: 0.8901960784, blue: 0.9529411765, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(25)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/ .opacity(0.3), radius: 20, x: 10, y: 20)
            .padding(.horizontal, 20.0)
        }

        }
    }
