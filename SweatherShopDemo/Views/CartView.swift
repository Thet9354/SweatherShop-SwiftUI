//
//  CartView.swift
//  SweatherShopDemo
//
//  Created by Phoon Thet Pine on 6/12/23.
//

import SwiftUI

struct CartView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if (cartManager.products.count > 0) {
                ForEach(cartManager.products, id: \.id) {
                    product in
                    ProductRowView(product: product)
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
                PaymentButtonView(action: {})
                    .padding()
                
            } else {
                Text("Your cart is empty")
            }
            
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
