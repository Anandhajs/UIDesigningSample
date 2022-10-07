//
//  ContentView.swift
//  UIDesigningSample
//
//  Created by Apple on 07/10/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }.padding(10)
            }.navigationTitle(Text("Dress"))
                .toolbar {
                    NavigationLink {
                        
                        CartView()
                            .environmentObject(cartManager)
                    } label: {
                        CartButtonView(numberOfProducts: cartManager.products.count)

                    }
                }
        }
        .navigationViewStyle(StackNavigationViewStyle())

        }    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//    ContentView()
//    }
//}
