//
//  Cards.swift
//  kmv-telekom
//
//  Created by Admin on 25.08.2021.
//
import SwiftUI

struct cataloguePage: View {
    var body: some View {
         ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    cardRate50()
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Подключить доп. опции").font(.system(size: 16)).fontWeight(.medium).foregroundColor(.white).padding(.leading, 15.0)
                            Image(systemName: "arrow.right").font(.system(size: 16)).foregroundColor(.white).padding(.trailing, 15.0)
                        }.frame(width: 261.0, height: 60.0)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6784313725, green: 0.2745098039, blue: 0.5568627451, alpha: 1)), Color(#colorLiteral(red: 0.5490196078, green: 0.2941176471, blue: 0.6235294118, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .cornerRadius(68.0)
                        Spacer()
                    }
                    .padding(.horizontal, 20.0)
                    HStack{
                        Text("Другие тарифы")
                            .font(.system(size: 21)).fontWeight(.medium)
                        Spacer()
                    }
                    .padding(.all, 20.0)
                    cardRate100()
                    HStack{
                        Text("Услуги")
                            .font(.system(size: 21)).fontWeight(.medium)
                        Spacer()
                    }
                    .padding(.all, 20.0)
                    staticIP()
                    HStack{
                        Text("Дополнительно")
                            .font(.system(size: 21)).fontWeight(.medium)
                        Spacer()
                    }
                    .padding(.all, 20.0)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20){
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("IP-TV").font(.system(size: 16)).fontWeight(.medium).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding(.horizontal, 15.0)
                            }
                            .frame(width: 153.0, height: 60.0)
                            .background(Color(#colorLiteral(red: 0.5803921569, green: 0.2901960784, blue: 0.6078431373, alpha: 1)))
                            .cornerRadius(68.0)
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Телефония").font(.system(size: 16)).fontWeight(.medium).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding(.horizontal, 15.0)
                            }
                            .frame(width: 153.0, height: 60.0)
                            .background(Color(#colorLiteral(red: 0.5803921569, green: 0.2901960784, blue: 0.6078431373, alpha: 1)))
                            .cornerRadius(68.0)
                        }
                    }
                    .padding([.leading,  .trailing], 20.0)
                    .padding(.bottom, 40.0)
                }
                .frame(height: 1600.0)
            }
        
}

struct cardRate50: View {
    var body: some View {
        GeometryReader{geometry in
            VStack (alignment: .center) {
                HStack {
                    Text("Домашний - 50")
                        .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                        .font(.title2)
                    Spacer()
                    Button(action: {
                        //
                    }, label: {
                        Image("pointer")
                    })
                }
                .padding([.top, .leading, .trailing], 20.0)
                Text("Безлимитный интернет")
                    .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                    .padding(.horizontal, 20.0)
                    .frame(width: geometry.size.width - 40, alignment: .leading)
                Text("Скорость до 50 Мбит/сек")
                    .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                    .padding(.horizontal, 20.0)
                    .frame(width: geometry.size.width - 40, alignment: .leading)
                HStack {
                    Text("Абоненская плата с учетом подключенных опций")
                        .multilineTextAlignment(.leading)
                        .frame(width: 220, height: 50, alignment: .leading)
                        .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                    Spacer()
                }
                .padding([.top, .leading, .trailing], 20.0)
                HStack{
                    Text("350₽")
                        .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("/мес")
                        .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                    Spacer()
                    Text("Списание 30 августа")
                        .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                        .font(.system(size: 13))
                }
                .padding([.leading, .bottom, .trailing], 20.0)
               
            }
            
            .frame(width: geometry.size.width - 40)
            
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8392156863, green: 0.8235294118, blue: 0.9098039216, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(25)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/ .opacity(0.3), radius: 20, x: 10, y: 20)
            .padding(.horizontal, 20.0)
        }

        }
    }
}


struct cardRate100: View {
    var body: some View {
        GeometryReader{geometry in
            VStack (alignment: .center) {
                HStack {
                    Text("Домашний - 100")
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
                            .frame(width: (geometry.size.width / 2), alignment: .leading)
                        Text("Скорость")
                            .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 40.0)
                            .frame(width: (geometry.size.width / 2), alignment: .leading)
                        HStack {
                            Text("до ")
                                .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 40.0)
                            Text("100 Мбит/сек")
                                .foregroundColor(Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1)))
                                .padding(.all, 5.0)
                                .background(Color(#colorLiteral(red: 0.9960784314, green: 0.8470588235, blue: 0.2431372549, alpha: 1)))
                                .cornerRadius(68.0)
                        }.frame(width: (geometry.size.width / 2), alignment: .leading)
                    }.frame(width: (geometry.size.width / 2)-20)
                    Spacer()
                    Text("500₽/мес")
                        .foregroundColor(Color(#colorLiteral(red: 0.5450980392, green: 0.2941176471, blue: 0.6235294118, alpha: 1)))
                        .font(.title)
                        .multilineTextAlignment(.trailing)
                        .frame(width: (geometry.size.width / 2)-40)
                }.frame(width: geometry.size.width - 40)
                HStack{
                    Spacer()
                    GradientButton()
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
	
struct staticIP: View {
    var body: some View {
        GeometryReader{geometry in
            VStack (alignment: .center) {
                HStack {
                    Text("Статический IP-адрес")
                        .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.8470588235, blue: 0.2431372549, alpha: 1)))
                        .font(.system(size: 24))
                    Spacer()
                }
                .padding([.top, .leading, .trailing], 20.0)
                .padding(.top, 20.0)
                HStack {
                    VStack {
                        Text("+100 ₽/мес").font(.system(size: 24))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 40.0)
                            .padding(.top, 20.0)
                            .padding(.bottom, 20.0)
                            .frame(width: (geometry.size.width / 2), alignment: .leading)
                    }.frame(width: (geometry.size.width / 2)-20)
                    Spacer()
                }.frame(width: geometry.size.width - 40)
                HStack{
                    Spacer()
                    PurpleOpacityButton()
                }
                .padding(.all, 20.0)
               
            }
            
            .frame(width: geometry.size.width - 40)
            
            .background(Image("staticIP").resizable().scaledToFill())
            .cornerRadius(25)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/ .opacity(0.3), radius: 20, x: 10, y: 20)
            .padding(.horizontal, 20.0)
        }

        }
    }
struct activeTarif_Previews: PreviewProvider {
    static var previews: some View {
        cataloguePage()    }
}
