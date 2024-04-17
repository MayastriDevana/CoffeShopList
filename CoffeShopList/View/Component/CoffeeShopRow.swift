//
//  CoffeeShopRow.swift
//  CoffeShopList
//
//  Created by User on 17/04/24.
//

import SwiftUI

struct CoffeeShopRow: View {
    var coffeeshop: Coffeeshop
    var body: some View {
        HStack(alignment: .top, spacing: 16){
            Image(coffeeshop.image)
                .resizable()
                .scaledToFit()
                .frame(height: 130)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading){
                Text(coffeeshop.name)
                    .font(.system(.headline, design: .rounded))
                    .foregroundStyle(.blue)
                
                Text(coffeeshop.description)
                    .font(.system(.subheadline, design: .rounded))
                    .lineLimit(2)
                    .padding(.top, 5)
                Text(coffeeshop.location)
                    .font(.system(.caption, design: .rounded))
                    .foregroundStyle(.secondary)
                    .padding(.top, 5)
            }
            .padding(.bottom)
        }
        .padding(5)
        
    }
}

#Preview {
    CoffeeShopRow(coffeeshop: CoffeeshopProvider.allData().first!)
        .padding()
}
