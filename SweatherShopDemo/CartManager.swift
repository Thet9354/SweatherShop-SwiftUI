//
//  CartManager.swift
//  SweatherShopDemo
//
//  Created by Phoon Thet Pine on 6/12/23.
//

import Foundation

class CartManager: ObservableObject {
    
    // MARK: - PROPERTIES
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    // MARK: - FUNCTIONS
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
