//
//  HeaderView.swift
//  CoffeShopList
//
//  Created by User on 17/04/24.
//

import SwiftUI

struct HeaderView: View {
    var coffeshop : Coffeeshop
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            Image(coffeshop.image)
            
            HStack{
                VStack(alignment: .leading) {
                    Text(coffeshop.name)
                    Text(coffeshop.location)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Image(systemName:"fork.knife.circle.fill")
                    .font(.system(size: 40))
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.white, .orange)
                    .shadow(color: .gray, radius: 10, x:0, y:10)
                
            
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .foregroundStyle(.white)
            .padding()
            .background(.green.opacity(0.8))
           
        }
        
    }
}

#Preview {
    HeaderView(coffeshop: CoffeeshopProvider.allData().first!)
        .padding()
}

