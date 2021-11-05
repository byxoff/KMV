//
//  application.swift
//  kmv-telekom
//
//  Created by Иван Обухов on 05.11.2021.
//

import SwiftUI

struct applicationView: View {
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
                    Text("Заявка для подключения").font(.system(size: 21)).fontWeight(.medium)
                        .foregroundColor(.white)
                    
                }.padding(.top, 50.0).padding(.bottom, 30.0).frame( width: 300, alignment: .leading)
                Spacer()
                ScrollView(.vertical, showsIndicators: false) {
                    ApplicationSubview()
                }
                Spacer()
                Spacer()
                Spacer()
            }.background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6784313725, green: 0.2745098039, blue: 0.5568627451, alpha: 1)), Color(#colorLiteral(red: 0.5490196078, green: 0.2941176471, blue: 0.6235294118, alpha: 1))]), startPoint: .bottomTrailing, endPoint: .topLeading))
            .ignoresSafeArea(.all)
        
    }
}

struct application_Previews: PreviewProvider {
    static var previews: some View {
        applicationView()
    }
}

struct ApplicationSubview: View {
    @State private var isPresented = false
    @State var checked = false
    var body: some View {
        
        GeometryReader { geometry in
            VStack(alignment: .center){
                VStack{

                    HStack {
                        VStack{
                            Text("Заполните форму и наш менеджер свяжется с Вами в ближайшее время").fixedSize(horizontal: false, vertical: true).font(.system(size: 14))
                                .foregroundColor(Color("profileColor"))
                                .padding([.leading, .bottom, .trailing], 20.0)
                         Menu{
                                Text("Частный дом")
                                Text("Многоквартирный дом")
                                Text("Офис")
                            }label: {
                                Text("Многоквартирный дом").font(.system(size: 15)).fontWeight(.medium)
                                Image(systemName: "chevron.down")
                            }
                            .foregroundColor((Color("phoneColor")))
                        }
                    }
                    .padding(.top, 91.0)
                    .padding(.bottom, 82.0)
                    VStack {
                        TextField("ФИО", text: .constant(""))
                            .foregroundColor(Color("logColor"))
                            .padding(.top, 10.0)
                            .accentColor(Color.green)
                        .frame(width: geometry.size.width - 80, alignment: .bottom)
                    
                    Rectangle()
                            .frame(width: geometry.size.width - 80, height: 2, alignment: .bottom)
                            .foregroundColor((Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1))))
                    TextField("Город", text: .constant(""))
                        .foregroundColor(Color("logColor"))
                        .padding(.top, 10.0)
                        .accentColor(Color.green)
                        .frame(width: geometry.size.width - 80, alignment: .bottom)
                    Rectangle()
                            .frame(width: geometry.size.width - 80, height: 2, alignment: .bottom)
                            .foregroundColor((Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1))))
                    TextField("Телефон", text: .constant(""))
                        .foregroundColor(Color("logColor"))
                        .padding(.top, 10.0)
                        .accentColor(Color.green)
                        .frame(width: geometry.size.width - 80, alignment: .bottom)
                    Rectangle()
                            .frame(width: geometry.size.width - 80, height: 2, alignment: .bottom)
                            .foregroundColor((Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1))))
                    TextField("Адрес", text: .constant(""))
                        .foregroundColor(Color("logColor"))
                        .padding(.top, 10.0)
                        .accentColor(Color.green)
                        .frame(width: geometry.size.width - 80, alignment: .bottom)
                    Rectangle()
                            .frame(width: geometry.size.width - 80, height: 2, alignment: .bottom)
                            .foregroundColor((Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1))))
                    TextField("Комментарий", text: .constant(""))
                        .foregroundColor(Color("logColor"))
                        .padding(.top, 10.0)
                        .accentColor(Color.green)
                        .frame(width: geometry.size.width - 80, alignment: .bottom)
                    Rectangle()
                        .frame(width: geometry.size.width - 80, height: 2, alignment: .bottom)
                        .foregroundColor((Color(#colorLiteral(red: 0.4901960784, green: 0.5529411765, blue: 0.6705882353, alpha: 1))))
                    }
                    HStack {
                        CheckBoxView(checked: $checked)
                        Text("Я согласен на обработку моих персональных данных")
                            .padding()
                            .fixedSize(horizontal: false, vertical: true).font(.system(size: 14))
                            .foregroundColor(Color("profileColor"))
                    }
                    .padding(.all, 20.0)
                    Spacer().frame(height: 20)
                    Button(action: { isPresented.toggle()
                        
                    }) {
                        Text("Отправить заявку").font(.system(size: 16)).fontWeight(.medium).foregroundColor(.white).padding(.leading, 15.0)
                        Image(systemName: "arrow.right").font(.system(size: 16)).foregroundColor(.white).padding(.trailing, 15.0)
                    }.fullScreenCover(isPresented: $isPresented, content: ContentView.init)
                    .padding()
                    .frame(width: 257.0, height: 60.0)
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

struct CheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square").font(.system(size: 16))
            .foregroundColor(checked ? Color("Color1") : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}
