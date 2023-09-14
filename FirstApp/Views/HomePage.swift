//
//  HomePage.swift
//  FirstApp
//
//  Created by Chathura Hetti Arachchi on 31/08/23.
//

import SwiftUI

struct HomePage: View {
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color(.white)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    VStack(alignment: .leading) {
                        AppBar()
                        SearchView()
                        ImageSliderView()

                        HStack {
                            Text("New Arivals")
                                .font(.title2)
                                .fontWeight(.medium)

                            Spacer()

                            NavigationLink(destination: ProductsView()){
                                Image(systemName: "circle.grid.2x2.fill")
                                    .foregroundColor(Color("kPrimary"))
                            }
                            
                        }
                        .padding()

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10, content: {
                                ForEach(productList, id: \.id) { product in
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                            })
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .environmentObject(CartManager())
    }
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)

                    Text("Shanghai China")
                        .font(.title2)
                        .foregroundColor(.gray)

                    Spacer()

                    NavigationLink(destination: CartView().environmentObject(cartManager)) {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                }

                Text("Find the most\nLuxurious")
                    .font(.largeTitle)
                    .bold()

                    + Text(" Furniture")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("kPrimary"))
            }
        }
        .padding()
        .environmentObject(cartManager)
    }
}
