//
//  CartManager.swift
//  UIDesigningSample
//
//  Created by Apple on 07/10/22.
//

import SwiftUI


class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0

    func addToCart(product: Product) {
        products.append(product)
        print(product.id)
        total += product.price
    }

    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id}
        print(product.name)
        total -= product.price
    }
}
