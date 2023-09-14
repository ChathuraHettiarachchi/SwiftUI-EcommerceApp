//
//  CartView.swift
//  FirstApp
//
//  Created by Chathura Hetti Arachchi on 31/08/23.
//

import Lottie
import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    CartProductView(product: product)
                }
                HStack {
                    Text("Your Total is ")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()

                PaymentButton(action: {})
                    .frame(height: 50)
                    .padding()

            } else {
                VStack(alignment: .center) {
                    LottieView(name: "empty")
                        .frame(height: 300)
                    Text("Oopz..!")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .bold()
                    Text("Add items to your cart")
                        .multilineTextAlignment(.center)
                        .font(.title2)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .frame(height: 500)
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
