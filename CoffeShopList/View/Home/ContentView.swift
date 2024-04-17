//
//  ContentView.swift
//  CoffeShopList
//
//  Created by User on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    var coffeshops : [Coffeeshop] = CoffeeshopProvider.allData()
    
    @State private var isRedacted: Bool = true
    
    var body: some View {
        NavigationStack{
            List(coffeshops){coffeeshop in
                NavigationLink {
                    CoffeeShopDetail(coffeeshop: coffeeshop)
                }label: {
                    if isRedacted {
                        CoffeeShopRow (coffeeshop: coffeeshop)
                            .redacted(reason: .placeholder)
                    } else {
                        CoffeeShopRow(coffeeshop: coffeeshop)
                    }
                }
            }
                .navigationTitle("Coffe Shop List")
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        isRedacted = false
                    }
                }

                .listStyle(.plain)
                .navigationBarTitleDisplayMode(.inline)
                .refreshable {
                    
                }
        }
    }
}

#Preview {
    ContentView()
}
