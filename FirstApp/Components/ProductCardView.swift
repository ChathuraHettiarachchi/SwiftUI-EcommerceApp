//
//  ProductCardView.swift
//  FirstApp
//
//  Created by Chathura Hetti Arachchi on 31/08/23.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product

    var body: some View {
        NavigationLink(destination: ProductDetailView(product: product)){
            ZStack {
                Color("kSecondary")
                ZStack(alignment: .bottomTrailing) {
                    VStack(alignment: .leading) {
                        Image(product.image)
                            .resizable()
                            .frame(width: 170, height: 164)
                            .cornerRadius(12)

                        Text(product.name)
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical, 1)

                        Text(product.supplier)
                            .foregroundColor(.gray)
                            .font(.caption)
                            .padding(.vertical, 0.5)

                        Text("$\(product.price)")
                        
                            .bold()
                    }

                    Button { cartManager.addToCart(product: product) } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .foregroundColor(Color("kPrimary"))
                            .frame(width: 35, height: 35)
                    }
                }
            }
            .frame(width: 185, height: 260)
            .cornerRadius(16)
        }
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: productList[0])
            .environmentObject(CartManager())
    }
}
