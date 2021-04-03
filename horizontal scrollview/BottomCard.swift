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
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                HStack {
                    Image(systemName: "star")
                        .foregroundColor(.white)
                        .frame(width: 40, height: 40)
                        .background(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                        .cornerRadius(20)
                        .padding(.leading, 30)
                    
                    VStack(alignment: .leading) {
                        Text("HBO")
                            .font(.system(size: 17, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                        Text("Today")
                            .font(.system(size: 14, weight: .medium, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    }
                    Spacer()
                    Text("-$6.37")
                        .font(.system(size: 17, weight: .medium, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.trailing, 30)
                }
                .padding(.vertical, 10)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
        .background(Color(#colorLiteral(red: 0.1356679499, green: 0.1348687112, blue: 0.136286974, alpha: 1)))
    }
}

struct BottomCard_Previews: PreviewProvider {
    static var previews: some View {
        BottomCard()
    }
}
