//
//  CoffeShopRow.swift
//  CoffeShopList
//
//  Created by User on 17/04/24.
//

import SwiftUI

struct CoffeShopRow: View {
    
    var body: some View {
        HStack(alignment: .top, spacing: 16){
            Text(emoji.emoji)
                .font(.largeTitle)
                .padding()
                .frame(width: 80, height: 80)
                .background(RandomColor.bgView())
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading){
                Text(emoji.name)
                    .font(.system(.headline, design: .rounded))
                Text(emoji.description)
                    .font(.system(.subheadline, design: .rounded))
                    .lineLimit(3)
            }
        }
    }
}

#Preview {
    CoffeShopRow(emoji: EmojiProvider.allEmojis().first!)
        .padding()
}
