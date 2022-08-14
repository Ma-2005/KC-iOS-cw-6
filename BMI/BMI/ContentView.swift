//
//  ContentView.swift
//  BMI
//
//  Created by Mac on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var height = ""
    @State var weigth = ""
    @State var Result = 0.0
    @State var health = ""
    var body: some View {
        ZStack{
            AngularGradient(colors: [.red, .green, .blue, .purple,.yellow, .pink],center: .center,startAngle: .degrees(90),endAngle: .degrees(360))
                .ignoresSafeArea()
                
            
            VStack{
                
                Text("Balance")
                    .font(.custom("Amiri-BoldItalic", size: 40))
                    .foregroundColor(.black)
                    .shadow(color: .gray, radius: 3)
                    .frame(width: 140, height: 36)
                    .padding()
                    .background(.white.opacity(0.6))
                    .cornerRadius(15)
                
                Image("B1")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .padding()
                    .background(.brown.opacity(0.4))
                    .cornerRadius(65)
                Spacer()
                
                Text("BMI")
                    .font(.custom("Amiri-BoldItalic", size: 60))
                    .shadow(color: .gray, radius: 3)
                    .frame(width: 150, height: 50)
                    .padding()
                    .background(.white.opacity(0.6))
                    .cornerRadius(25)
                Spacer()
                
            HStack{
                
                TextField("      weigth", text: $weigth)
                    .font(.custom("Amiri-BoldItalic", size: 24))
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .frame(width: 200, height: 80)
                    
                
                TextField("      height", text: $height)
                    .font(.custom("Amiri-BoldItalic", size: 24))
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .frame(width: 200, height: 80)
               
                }
                .background(.black.opacity(0.1))
                .cornerRadius(15)
                
                
                Button {
                    Result = BmiCalc(w: Double(weigth) ?? 0.0, h: Double(height) ?? 0.0)
                    
                    if Result <= 20 {
                        health = "Bad"
                    }
                    else if Result <= 25 {
                        health = "Good"
                    }
                    else {
                        health = "Fat"
                    }
                } label: {
                    Text("Calculate")
                        .font(.custom("Amiri-BoldItalic", size: 38))
                        .foregroundColor(.white)
                        .shadow(color: .brown, radius: 3)
                        .padding()
                        .background(.black.opacity(0.9))
                        .cornerRadius(25)
                }
            
              
                
                Text("BMI = \(Result)")
                    .font(.custom("Amiri-BoldItalic", size: 38))
                    .foregroundColor(.black)
                    .shadow(color: .white, radius: 3)
                    .padding()
                    .background(.white.opacity(0.6))
                    .cornerRadius(25)
                
                Text("The condition : \(health)")
                    .font(.custom("Amiri-BoldItalic", size: 38))
                    .foregroundColor(.black)
                    .shadow(color: .white, radius: 3)
                    .padding()
                .background(.white.opacity(0.6))
                .cornerRadius(25)
                
            Spacer()
            }
            .padding()
        }
    }
    func BmiCalc(w: Double, h: Double) -> Double{
        return w / ( h * h )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
