//
//  CartView.swift
//  UIDesigningSample
//
//  Created by Apple on 07/10/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    CartProductList( product: product)
                }
                HStack {
                    Text("Your cart Total is ")
                    Spacer()
                    Text("Rs. \(cartManager.total).00")
                        .bold()
                }
                .padding()
            } else {
                Text("Your cart is Empty!")
            }

        }.navigationTitle(Text("My Cart"))
            .padding(.top)
    }
}

//struct CartView_Previews: PreviewProvider {
//    static var previews: some View {
//        CartView()
//            .environmentObject(CartManager())
//    }
//}
