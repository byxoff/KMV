//
//  ContentView.swift
//  kmv-telekom
//
//  Created by Alexey Sergeev on 27.07.2021.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var index = 0
    @State var show = false
    
    var body: some View {
        
        ZStack{
            HStack {
                
                VStack {
                    VStack {

                        HStack{
                            Image("profileLogo")
                                .padding(.leading, 30.0)
                            Spacer()
                        }
                    }.padding(.vertical, 50.0).background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8509803922, green: 0.8392156863, blue: 0.9176470588, alpha: 1)), Color(#colorLiteral(red: 0.9529411765, green: 0.9490196078, blue: 0.9764705882, alpha: 1))]), startPoint: .bottomTrailing, endPoint: .topLeading))
                HStack{
                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Привет,")
                                .font(.system(size: 30)).fontWeight(.bold)
                                .foregroundColor(Color("nameColor"))
                                .padding(.top, 10)
                            Text("Алексей")
                                .font(.system(size: 30)).fontWeight(.bold)
                                .foregroundColor(Color("nameColor"))
                            Text("Ваш баланс: 390₽").font(.system(size: 12)).fontWeight(.regular)
                                .foregroundColor(Color("fontColor"))
                            Button(action: {
                                self.index = 4
                                
                                withAnimation{
                                    self.show.toggle()
                                }
                            }){
                                HStack{
                                    Image("payment")
                                    Text("Пополнить")
                                }
                                .padding(.top, 18.0)
                                .font(.system(size: 16))
                                    .foregroundColor(Color("paymentColor"))
                            }
                            VStack {
                                HStack {
                                    Button(action: {
                                        self.index = 0
                                        
                                        withAnimation{
                                            self.show.toggle()
                                        }
                                    }) {
                                        HStack(spacing: 25){
                                            Image("tariff")
                                                .foregroundColor(self.index == 0 ? Color("Color1") : Color("fontColor"))
                                            
                                            Text("Тариф")
                                                .foregroundColor(self.index == 0 ? Color("Color1") : Color("fontColor"))
                                        }
                                        .padding(.vertical, 15.0)
                                        .padding(.horizontal, 30.0)
                                        .background(self.index == 0 ? Color("currentColor") : Color.clear)
                                        .cornerRadius(68)
                                    }
                                .padding(.top,25)
                                    Spacer()
                                }
                            
                            
                                HStack {
                                    Button(action: {
                                    self.index = 1
                                    
                                    withAnimation{
                                        self.show.toggle()
                                    }
                                    
                                }) {
                                    
                                    HStack(spacing: 25){
                                        
                                        Image("service")
                                        .foregroundColor(self.index == 1 ? Color("Color1") : Color("fontColor"))
                                        
                                        
                                        Text("Услуги")
                                            .foregroundColor(self.index == 1 ? Color("Color1") : Color("fontColor"))
                                    }
                                    .padding(.vertical, 15.0)
                                    .padding(.horizontal, 30.0)
                                    .background(self.index == 1 ? Color("currentColor") : Color.clear)
                                    .cornerRadius(68)
                            }
                                    Spacer()
                                }
                            
                                HStack {
                                    Button(action: {
                                    
                                    self.index = 2
                                    
                                    withAnimation{
                                        
                                        self.show.toggle()
                                    }
                                    
                                }) {
                                    
                                    HStack(spacing: 25){
                                        
                                        Image("statistics")
                                            .foregroundColor(self.index == 2 ? Color("Color1") : Color("fontColor"))
                                        
                                        
                                        Text("Статистика")
                                            .foregroundColor(self.index == 2 ? Color("Color1") : Color("fontColor"))
                                    }
                                    .padding(.vertical, 15.0)
                                    .padding(.horizontal, 30.0)
                                    .background(self.index == 2 ? Color("currentColor") : Color.clear)
                                    .cornerRadius(68)
                            }
                                    Spacer()
                                }
                            
                                HStack {
                                    Button(action: {
                                    
                                    self.index = 3
                                    
                                    withAnimation{
                                        
                                        self.show.toggle()
                                    }
                                    
                                }) {
                                    
                                    HStack(spacing: 25){
                                        
                                        Image("support")
                                            .foregroundColor(self.index == 3 ? Color("Color1") : Color("fontColor"))
                                        
                                        
                                        Text("Поддержка")
                                            .foregroundColor(self.index == 3 ? Color("Color1") : Color("fontColor"))
                                    }
                                    .padding(.vertical, 15.0)
                                    .padding(.horizontal, 30.0)
                                    .background(self.index == 3 ? Color("currentColor") : Color.clear)
                                    .cornerRadius(68)
                            }
                                    Spacer()
                                }
                                HStack {
                                    Button(action: {
                                    
                                    self.index = 5
                                    
                                    withAnimation{
                                        
                                        self.show.toggle()
                                    }
                                    
                                }) {
                                    
                                    HStack(spacing: 25){
                                        
                                        Image(systemName: "gearshape").font(.system(size: 16))
                                .foregroundColor(self.index == 3 ? Color("Color1") : Color("fontColor"))
                                        
                                        
                                        Text("Настройки")
                                            .foregroundColor(self.index == 5 ? Color("Color1") : Color("fontColor"))
                                    }
                                    .padding(.vertical, 15.0)
                                    .padding(.horizontal, 30.0)
                                    .background(self.index == 5 ? Color("currentColor") : Color.clear)
                                    .cornerRadius(68)
                            }
                                    Spacer()
                                }
                            }
                            Divider()
                                .frame(width: 150, height: 1)
                                .background(Color("fontColor"))
                                .padding(.vertical,30)
                            
                            Button(action: {
                                //
                            }) {
                                
                                HStack(spacing: 25){
                                    
                                    Image("exit")
                                        .foregroundColor(Color("fontColor"))
                                    
                                    
                                    Text("Выход")
                                        .foregroundColor(Color("fontColor"))
                                }
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                            }
                        }
                            Spacer()
                        }
                        .padding(.top,25)
                        .padding(.horizontal,20)
                        
                        Spacer(minLength: 0)
                    Spacer()
                    }
                    .ignoresSafeArea(.all)
                
            }
            
            
            VStack(spacing: 0){
                
                HStack(spacing: 15){
                    
                    Button(action: {
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {

                        
                        Image(systemName: self.show ? "xmark" : "line.horizontal.3")
                            .resizable()
                            .frame(width: self.show ? 18 : 27, height: 22)
                            .foregroundColor(Color("fontColor"))
                            .background(Image("backbuttom"))
                            .padding()
                    }

                    
                    Text(self.index == 0 ? "Тариф" : (self.index == 1 ? "Услуги" : (self.index == 2 ? "" : (self.index == 3 ? "Поддержка" : (self.index == 4 ? "Оплата" :  "Настройки")))))
                        .font(.title)
                        .foregroundColor(Color("profileColor"))
                    
                    Spacer(minLength: 0)
                }
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                .frame(height: 160.0)
                .background(Image(self.index == 0 ? "whiteMenu" : (self.index == 1 ? "whiteMenu" : (self.index == 2 ? "ImageMenu" : "whiteMenu")))
                            .resizable()
                                .scaledToFill()
                )
                
                GeometryReader{_ in
                    
                    VStack{

                        if self.index == 0{
                            
                            cataloguePage()
                        }
                        else if self.index == 1{
                            
                            servicesCards()
                        }
                        else if self.index == 2{
                            
                            Phone()
                        }
                        else if self.index == 3{
                            Support()//ChatView().environmentObject(ChatHelper())
                            
                        }
                        else if self.index == 4{
                            PaymentsView()
                        }
                        else if self.index == 5{
                            SettingsView()
                        }
                    }
                }
            }
                .background(Color("fontColor"))
                .cornerRadius(self.show ? 30 : 0)
                .scaleEffect(self.show ? 0.9 : 1)
                .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
                .rotationEffect(.init(degrees: self.show ? -5 : 0))
            Spacer()
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color("backgroundProfileColorFP"), Color("backgroundProfileColorSP")]), startPoint:.topLeading , endPoint: .bottomTrailing)).edgesIgnoringSafeArea(.all)
        
    }
}



struct Cart : View {
    
    var body: some View{
        
        VStack{
            
            Text("Услуги")
                .padding()
        }
    }
}

struct Orders : View {
    
    var body: some View{
        
        VStack{
            
            Text("Поддержка")
                .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
