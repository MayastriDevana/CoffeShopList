//
//  CoffeeShopDetail.swift
//  CoffeShopList
//
//  Created by User on 17/04/24.
//

import SwiftUI

struct CoffeeShopDetail: View {
    var coffeeshop : Coffeeshop
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            ScrollView (showsIndicators: false){
                HeaderView(coffeshop: coffeeshop)
                    
                
                HStack {
                    VStack(alignment: .leading, spacing: 10){
                        Text(coffeeshop.overview)
                    }
                    .padding()
                }
                .padding()
                    
            }
            .ignoresSafeArea(.all, edges: .top)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading){
                    Button {
                        dismiss()
                    }label: {
                        Image(systemName: "chevron.left.circle.fill")
                            .font(.title3)
                    }
                    .tint(.white)
                }
            }
        }
    }
}

#Preview {
    CoffeeShopDetail(coffeeshop: CoffeeshopProvider.allData().first!)
        //.padding()

}
