//
//  ProgressBar.swift
//  kmv-telekom
//
//  Created by Admin on 11.09.2021.
//

import SwiftUI

extension View {
    func innerShadow<S: Shape>(using shape: S, angle: Angle = .degrees(0), color: Color = .black, width: CGFloat = 6, blur: CGFloat = 6) -> some View {
        return self.overlay(
            shape
                .stroke(color, lineWidth: width)
                .blur(radius: blur)
                .mask(shape)
        )
    }
    
}

struct ProgressView: View {
    @State var progressValue: Float = 0.0
    @State var isFinished = false
    @State var showLogo = true
    
    var body: some View {
        if !isFinished {
            
                GeometryReader { geometry in
                    if !showLogo{
                        ZStack {
                    VStack {
                        Spacer()
                        ProgressBar(progress: self.$progressValue)
                            .frame(width: 150.0, height: 150.0)
                            .padding(40.0)
                        Spacer()
                    }
                }.opacity(showLogo ? 0 : 1)
                        .frame(width: geometry.size.width,height: geometry.size.height)
                .onAppear(){
                    incrementProgress()
                }
            }
            else{
                ZStack {
            VStack {
                Image("Logo")
                    .resizable()
                    .scaledToFill()
                    .opacity(showLogo ? 1 : 0)
            }.frame(width: 320.0, height: 320.0)
        }.frame(width: geometry.size.width,height: geometry.size.height)
        .onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                withAnimation(.linear(duration: 2)){
                    incrementProgress()
                }
            }
            
        }
            
            }
                    
                }.background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6784313725, green: 0.2745098039, blue: 0.5568627451, alpha: 1)), Color(#colorLiteral(red: 0.5490196078, green: 0.2941176471, blue: 0.6235294118, alpha: 1))]), startPoint: .bottomTrailing, endPoint: .topLeading))
            .ignoresSafeArea(.all)
                .opacity(isFinished ? 0 : 1)
        }
        else{
            loginPage().opacity(isFinished ? 1 : 0)
        }
    }
    
    func incrementProgress() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){timer in
            self.progressValue += 0.01
            if self.progressValue >= 1.0{
                timer.invalidate()
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            withAnimation(.linear(duration: 0.4)){
                showLogo=false
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            withAnimation(.linear(duration: 0.4)){
                isFinished=true
            }
        }
    }
    

    
    
}
struct ProgressBar: View {
    @Binding var progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color(#colorLiteral(red: 0.9176470588, green: 0.9098039216, blue: 0.9529411765, alpha: 1)))
                .frame(width: 156.0, height: 156.0)
                .foregroundColor((Color(#colorLiteral(red: 0.9176470588, green: 0.9098039216, blue: 0.9529411765, alpha: 1))))
                .shadow(color: (Color(#colorLiteral(red: 0.6392156863, green: 0.1411764706, blue: 0.4823529412, alpha: 1))), radius: 4, x: 2, y: 2)
                .shadow(color: (Color(#colorLiteral(red: 0.5176470588, green: 0.168627451, blue: 0.5490196078, alpha: 1))), radius: 20, x: -6, y: -6)
                .shadow(color: (Color(#colorLiteral(red: 0.6392156863, green: 0.1411764706, blue: 0.4823529412, alpha: 1))), radius: 20, x: 4, y: 4)
            Circle()
                .stroke(lineWidth: 60.0)
                .foregroundColor(Color(#colorLiteral(red: 0.9176470588, green: 0.9098039216, blue: 0.9529411765, alpha: 1)))
                .innerShadow(using: Circle())
                .frame(width: 212.0, height: 212.0)
                .foregroundColor(Color(#colorLiteral(red: 0.8901960784, green: 0.9294117647, blue: 0.968627451, alpha: 1)))
            Circle()
                .foregroundColor((Color(#colorLiteral(red: 0.9176470588, green: 0.9098039216, blue: 0.9529411765, alpha: 1))))
                .shadow(color: (Color(#colorLiteral(red: 0.9176470588, green: 0.9098039216, blue: 0.9529411765, alpha: 1))), radius: 2, x: 2, y: 2)
                .shadow(color: (Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.41))), radius: 10, x: -6, y: -6)
                .shadow(color: (Color(#colorLiteral(red: 0.4352941176, green: 0.5490196078, blue: 0.6901960784, alpha: 0.41))), radius: 10, x: 4, y: 4)
                .frame(width: 94.0, height: 94.0)
            Circle()
                .foregroundColor(Color(#colorLiteral(red: 0.8901960784, green: 0.9294117647, blue: 0.968627451, alpha: 1)))
                .shadow(color: (Color(#colorLiteral(red: 0.9176470588, green: 0.9098039216, blue: 0.9529411765, alpha: 1))), radius: 2, x: 2, y: 2)
                .shadow(color: (Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))), radius: 10, x: -6, y: -6)
                .shadow(color: (Color(#colorLiteral(red: 0.4352941176, green: 0.5490196078, blue: 0.6901960784, alpha: 0.41))), radius: 10, x: 4, y: 4)
                .frame(width: 76.0, height: 74.0)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 54.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color(#colorLiteral(red: 0.6784313725, green: 0.2745098039, blue: 0.5568627451, alpha: 1)))
                .foregroundColor(Color(#colorLiteral(red: 0.8901960784, green: 0.9294117647, blue: 0.968627451, alpha: 1)))
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
                .frame(width: 156.0, height: 156.0)
            
        }.overlay(Text(String(format: "%.0f%%", min(self.progress, 1.0)*100.0))
                    .font(.system(size: 21))
                    .foregroundColor(self.progress < 0.50 ? Color(#colorLiteral(red: 0.6784313725, green: 0.2745098039, blue: 0.5568627451, alpha: 1)) :Color(#colorLiteral(red: 0.9176470588, green: 0.9098039216, blue: 0.9529411765, alpha: 1)))
                    .bold()
                    .padding(.bottom, 12.0), alignment: .bottom)
        
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
