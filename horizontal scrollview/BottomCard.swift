//
//  BottomCard.swift
//  horizontal scrollview
//
//  Created by  Denis on 03.04.2021.
//

import SwiftUI

struct BottomCard: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 20)
            
            ForEach(CardInfoData) { item in
                InfoCard(info: item)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
        .background(Color(#colorLiteral(red: 0.1356679499, green: 0.1348687112, blue: 0.136286974, alpha: 1)))
        .cornerRadius(30)
    }
}

struct BottomCard_Previews: PreviewProvider {
    static var previews: some View {
        BottomCard()
    }
}

struct CardInfo : Identifiable {
    var id = UUID()
    var icon: String
    var name: String
    var time: String
    var charge: String
}

let CardInfoData = [
    CardInfo(icon: "star", name: "HBO" , time: "Today", charge: "-$6.37"),
    CardInfo(icon: "arrow.clockwise", name: "Spotify" , time: "Yesterday", charge: "-$9.45"),
    CardInfo(icon: "bag", name: "Acme Clothing" , time: "Yesterday", charge: "-$3.87"),
    CardInfo(icon: "suit.heart", name: "Dantist" , time: "May 17th", charge: "-$63.37"),
    CardInfo(icon: "arrow.clockwise", name: "Patreon" , time: "May 16th", charge: "-$21.37")
]

struct InfoCard: View {
    
    var info : CardInfo
    
    var body: some View {
        HStack {
            Image(systemName: info.icon)
                .foregroundColor(.white)
                .frame(width: 40, height: 40)
                .background(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                .cornerRadius(20)
                .padding(.leading, 30)
            
            VStack(alignment: .leading) {
                Text(info.name)
                    .font(.system(size: 17, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                Text(info.time)
                    .font(.system(size: 14, weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
            }
            Spacer()
            Text(info.charge)
                .font(.system(size: 17, weight: .medium, design: .rounded))
                .foregroundColor(.white)
                .padding(.trailing, 30)
        }
        .padding(.vertical, 10)
    }
}
