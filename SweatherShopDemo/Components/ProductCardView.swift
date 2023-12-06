//
//  ProductCardView.swift
//  SweatherShopDemo
//
//  Created by Phoon Thet Pine on 6/12/23.
//

import SwiftUI

struct ProductCardView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .frame(width: 180)
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
            
            
        }
    }
}

#Preview {
    ProductCardView(product: productList[0])
        .environmentObject(CartManager())
}
