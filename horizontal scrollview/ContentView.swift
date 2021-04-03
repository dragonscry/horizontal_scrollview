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
            
            VStack{
                Text("Current Ballance")
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .font(.system(size: 19, weight: .medium, design: .rounded))
                Text("$11,502")
                    .foregroundColor(.white)
                    .font(.system(size: 35, weight: .bold, design: .rounded))
                    .padding(.top, 4)
            }
            .offset(y: -250)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (spacing: 20){
                    ForEach(cardData) { item in
                        Cards(card: item)
                        .rotationEffect(.degrees(90))
                    }
                }
                .padding(.leading, 25.0)
                .frame(height: 350)
            }
            .padding(.top, 50)
            
            BottomCard()
                .offset(y:1000)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Cards: View {
    
    var card: Card
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [card.linearOne, card.linearTwo]), startPoint: .bottomLeading, endPoint: .topTrailing)
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
                    Text(card.number)
                        .foregroundColor(.white).opacity(0.7)
                        .font(.system(size: 13, weight: .bold, design: .rounded))
                    
                    Spacer()
                    
                }
                .padding(.top, 25)
                
                Spacer()
                
                HStack {
                    Text(card.total)
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
        .frame(width: 325, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .cornerRadius(25)
    }
}

struct Card: Identifiable {
    var id = UUID()
    var number : String
    var total : String
    var linearOne : Color
    var linearTwo : Color
}

let cardData = [
    Card(number: "1234", total: "$1,564", linearOne: Color(#colorLiteral(red: 0.4893727303, green: 0.07381700724, blue: 1, alpha: 1)), linearTwo: Color(#colorLiteral(red: 0.702722609, green: 0.4491981268, blue: 1, alpha: 1))),
    Card(number: "4567", total: "$1,814", linearOne: Color(#colorLiteral(red: 0.8227639198, green: 0.2200964987, blue: 0.9952040315, alpha: 1)), linearTwo: Color(#colorLiteral(red: 1, green: 0, blue: 0.8291742802, alpha: 1))),
    Card(number: "7890", total: "$2,345", linearOne: Color(#colorLiteral(red: 0, green: 0.6982401013, blue: 0.9863644242, alpha: 1)), linearTwo: Color(#colorLiteral(red: 0.2130348086, green: 0.8937990069, blue: 0.9820541739, alpha: 1))),
    Card(number: "1357", total: "$3,972", linearOne: Color(#colorLiteral(red: 1, green: 0, blue: 0.2427587509, alpha: 1)), linearTwo: Color(#colorLiteral(red: 1, green: 0.5103982687, blue: 0.6093614101, alpha: 1))),
    Card(number: "2468", total: "$2,264", linearOne: Color(#colorLiteral(red: 0, green: 0.4971106052, blue: 0.9947841763, alpha: 1)), linearTwo: Color(#colorLiteral(red: 0.2383600175, green: 0.6599833965, blue: 0.9955330491, alpha: 1)))
]
