//
//  ProductCard.swift
//  UIDesigningSample
//
//  Created by Apple on 07/10/22.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image).resizable()
                    .cornerRadius(20)
                    .frame(width: 170)
                    .scaledToFit()
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    Text("Rs. \(product.price)")
                        .font(.caption)
                }.padding()
                    .frame(width: 170, alignment: .leading)
                    .background(Color(.lightText))
                    .cornerRadius(20)
            }
            .frame(width: 170, height: 220)
            .shadow(radius: 4)
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color(.black))
                    .cornerRadius(50)
                    .padding(5)
            }
        }

    }
}

