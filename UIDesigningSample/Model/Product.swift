//
//  Product.swift
//  UIDesigningSample
//
//  Created by Apple on 07/10/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int

}

var productList: [Product] = [Product(name: "Gold Top", image: "dress-1", price: 600), Product(name: "Black Top", image: "dress-2", price: 800), Product(name: "Blue Top", image: "dress-5", price: 400), Product(name: "Purple Top", image: "dress-4", price: 700), Product(name: "Purple Top", image: "dress-5", price: 650), Product(name: "Green Top", image: "dress-6", price: 850), Product(name: "Black Top", image: "dress-7", price: 1000), Product(name: "Red Top", image: "dress-8", price: 450)]
