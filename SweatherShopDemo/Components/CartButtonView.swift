//
//  CartButtonView.swift
//  SweatherShopDemo
//
//  Created by Phoon Thet Pine on 6/12/23.
//

import SwiftUI

struct CartButtonView: View {
    // MARK: - PROPERTIES
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    CartButtonView(numberOfProducts: 1)
}
