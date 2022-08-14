//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        ZStack{
            Image("44")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 20){
             
                Text("المسبحة")
                    .font(.custom("Amiri-Italic", size: 40))
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 5)
                    .padding()
                    .frame(width: 180, height: 60)
                    .background(Color(red: 0.496, green: 0.864, blue: 0.893))
                    .cornerRadius(30)
        VStack{
         
            Memtea(Mycounter: $counter[0], title: "أستغفر الله العظيم")
          
            Memtea(Mycounter: $counter[1], title: "الحمدلله")
         
            Memtea(Mycounter: $counter[2], title: "سبحان الله وبحمده")
            
            Spacer()
            
            }
        }
    }
}
// يجب عمل extract
        
    struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    

struct Memtea: View {
    
    @Binding var Mycounter: Int
    @State var title: String
    var body: some View {
        HStack{
            Text(title)
                .font(.custom("Amiri-Italic", size: 40))
                .foregroundColor(.white)
                .shadow(color: Color(red: 0.496, green: 0.864, blue: 0.893), radius: 5)
            
            Spacer()
            
            
            Text("\(Mycounter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(Color.white)
                .shadow(color: .black, radius: 3)
                .background(Color(red: 0.496, green: 0.864, blue: 0.893))
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    Mycounter = Mycounter + 1
                    
                }
        }.padding()
    }
    }
}
        

