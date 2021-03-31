//
//  ContentView.swift
//  horizontal scrollview
//
//  Created by  Denis on 31.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
                .ignoresSafeArea(.all)
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4893727303, green: 0.07381700724, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.702722609, green: 0.4491981268, blue: 1, alpha: 1))]), startPoint: .bottomLeading, endPoint: .topTrailing)
                Card()
            }
            .frame(width: 325, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(25)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    var body: some View {
        VStack {
            
            HStack{
                //first four circles
                HStack {
                    ForEach (Range(1...3)) {_ in
                        HStack {
                            HStack (spacing: 5) {
                                ForEach (Range(1...4)) {_ in
                                    Circle()
                                        .frame(width: 8, height: 8)
                                        .foregroundColor(.white).opacity(0.7)
                                }
                            }
                        }
                    }
                }
                .padding(.leading, 30)
                Text("1234")
                    .foregroundColor(.white).opacity(0.7)
                    .font(.system(size: 13, weight: .bold, design: .rounded))
                
                Spacer()
                
            }
            .padding(.top, 25)
            
            Spacer()
            
            HStack {
                Text("$1,564")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.leading, 30)
                Spacer()
                
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white).opacity(0.7)
                        .padding(.trailing, 40)
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white).opacity(0.7)
                    
                }
                
            }
            .padding(.bottom, 25)
        }
    }
}
