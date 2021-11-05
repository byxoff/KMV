//
//  services.swift
//  kmv-telekom
//
//  Created by Admin on 03.09.2021.
//

import SwiftUI

struct servicesCards: View {
    var body: some View {
        GeometryReader{geometry in
            ScrollView(.vertical, showsIndicators: false) {
                   VStack(spacing: 20) {
                    VStack {
                        HStack{
                            Text("ИНТЕРНЕТ").font(.system(size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontColor"))
                                .padding(.leading, 40.0)
                            Spacer()
                        }.frame(width: geometry.size.width, height: 105)
                        .background(Image("title1").resizable().scaledToFill())
                        cardRate30()
                            .padding(.vertical, 20.0)
                            .frame(height: 245.0)
                        Spacer().frame(height:90)
                    }
                    VStack {
                        HStack{
                            Text("WI-FI").font(.system(size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontColor"))
                                .padding(.leading, 40.0)
                            Spacer()
                        }.frame(width: geometry.size.width, height: 105)
                        .background(Image("title2").resizable().scaledToFill())
                        cardWifi()
                            .padding(.vertical, 20.0)
                            .frame(height: 245.0)
                        Spacer().frame(height:60)
                    }
                    HStack{
                        Text("GPON").font(.system(size: 24))
                            .fontWeight(.bold)
                            .foregroundColor(Color("fontColor"))
                            .padding(.leading, 40.0)
                        Spacer()
                    }.frame(width: geometry.size.width, height: 105)
                    .background(Image("title3").resizable().scaledToFill())
                    cardGpon()
                        .padding(.vertical, 20.0)
                        .frame(height: 245.0)
                    Spacer().frame(height:50)
                    VStack {
                        HStack{
                            Text("ТЕЛЕФОНИЯ").font(.system(size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontColor"))
                                .padding(.leading, 40.0)
                            Spacer()
                        }.frame(width: geometry.size.width, height: 105)
                        .background(Image("title4").resizable().scaledToFill())
                        cardPhone()
                            .padding(.vertical, 20.0)
                            .frame(height: 245.0)
                        Spacer().frame(height:100)
                    }
                    
                    VStack {
                        HStack{
                            Text("IP-TV").font(.system(size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontColor"))
                                .padding(.leading, 40.0)
                            Spacer()
                        }.frame(width: geometry.size.width, height: 105)
                        .background(Image("title5").resizable().scaledToFill())
                        cardTV()
                            .padding(.vertical, 20.0)
                            .frame(height: 245.0)
                        Spacer().frame(height:100)
                    }
                   }.frame(height: 2300)
            }
        }
        
    }
}

struct services_Previews: PreviewProvider {
    static var previews: some View {
        servicesCards()
    }
}

struct cardRate30: View {
    var body: some View {
        GeometryReader{card in
            VStack (alignment: .center) {
                HStack {
                    Text("Домашний - 30")
                        .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                        .font(.title2)
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
                        Text("Домашний интернет")
                            .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 40.0)
                            .frame(width: (card.size.width / 2), alignment: .leading)
                        Text("Скорость")
                            .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 40.0)
                            .frame(width: (card.size.width / 2), alignment: .leading)
                        HStack {
                            Text("до ")
                                .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 40.0)
                            Text("30 Мбит/сек")
                                .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                                .padding(.all, 5.0)
                                .background(Color(#colorLiteral(red: 0.9960784314, green: 0.8470588235, blue: 0.2431372549, alpha: 1)))
                                .cornerRadius(68.0)
                        }.frame(width: (card.size.width / 2), alignment: .leading)
                    }.frame(width: (card.size.width / 2)-20)
                    Spacer()
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

struct cardWifi: View {
    var body: some View {
        GeometryReader{card in
            VStack (alignment: .center) {
                HStack {
                    Text("WI-FI - 5")
                        .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                        .font(.title2)
                        .padding(.leading, 10.0)
                    Spacer()
                }
                .padding([.top, .leading, .trailing], 20.0)
                .padding(.bottom, 20.0)
                HStack {
                    VStack {
                        Text("До 5 Мбит/с")
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

struct cardGpon: View {
    var body: some View {
        GeometryReader{card in
            VStack (alignment: .center) {
                HStack {
                    Text("GPON - 50")
                        .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                        .font(.title2)
                        .padding(.leading, 10.0)
                    Spacer()
                }
                .padding([.top, .leading, .trailing], 20.0)
                .padding(.bottom, 20.0)
                HStack {
                    VStack {
                        Text("До 50 Мбит/с")
                            .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 40.0)
                            .frame(width: (card.size.width / 2), alignment: .leading)
                      
                    }.frame(width: (card.size.width / 2)-20)
                    Spacer()
                        .frame(height: 70.0)
                    Text("400₽/мес")
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


struct cardPhone: View {
    var body: some View {
        GeometryReader{card in
            VStack (alignment: .center) {
                HStack {
                    Text("Городской номер телефона").fixedSize(horizontal: false, vertical: true)
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
                        Text("Единовременно").fixedSize(horizontal: false, vertical: true).font(.system(size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 40.0)
                            .frame(width: (card.size.width / 2), alignment: .leading)
                      
                    }.frame(width: (card.size.width / 2)-20)
                    Spacer()
                        .frame(height: 70.0)
                    Text("500₽/мес")
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

struct cardTV: View {
    var body: some View {
        GeometryReader{card in
            VStack (alignment: .center) {
                HStack {
                    Text("Пакет бесплатный")
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
                        Text("26 каналов")
                            .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 40.0)
                            .frame(width: (card.size.width / 2), alignment: .leading)
                      
                    }.frame(width: (card.size.width / 2)-20)
                    Spacer()
                        .frame(height: 70.0)
                    Text("0₽/мес")
                        .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                        .font(.title)
                        .multilineTextAlignment(.trailing)
                        .padding(.all, 10.0)
                        .background(Color(#colorLiteral(red: 0.9960784314, green: 0.8470588235, blue: 0.2431372549, alpha: 1)))
                        .cornerRadius(68.0)
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
