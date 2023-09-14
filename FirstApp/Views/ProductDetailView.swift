//
//  ProductDetailView.swift
//  FirstApp
//
//  Created by Chathura Hetti Arachchi on 31/08/23.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                VStack(alignment: .leading){
                    ZStack(alignment: .topTrailing){
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 320)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 62)
                            .padding(.trailing, 20)
                    }
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text(product.name)
                                .font(.title2)
                                .bold()
                            
                            Spacer()
                            
                            Text("$\(product.price).00")
                                .foregroundColor(.black)
                                .font(.title2)
                                .fontWeight(.medium)
                                .padding(.horizontal)
                                .bold()
                                .background(Color("kSecondary"))
                                .cornerRadius(12)
                        }
                        .padding(.vertical)
                        
                        HStack(spacing: 10){
                            ForEach(0..<5){index in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.yellow)
                            }
                            
                            Text("(4.5)")
                                .foregroundColor(.gray)
                        }
                        .padding(.bottom, 12)
                        
                        Text("Description")
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        Text(product.description)
                            .padding(.bottom, 12)
                        
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text("Size")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .padding(.bottom, 1)
                                
                                Text("Height: 135 cm")
                                    .font(.system(size: 18))
                                    .foregroundColor(.gray)
                                Text("Width: 120 cm")
                                    .font(.system(size: 18))
                                    .foregroundColor(.gray)
                                Text("Diameter: 97 cm")
                                    .font(.system(size: 18))
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .trailing){
                                Text("Colors")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .padding(.bottom, 1)
                                
                                HStack{
                                    Circle()
                                        .fill(.red)
                                        .frame(width: 30, height: 30)
                                    Circle()
                                        .fill(.black)
                                        .frame(width: 30, height: 30)
                                    Circle()
                                        .fill(.blue)
                                        .frame(width: 30, height: 30)
                                }
                            }
                        }
                        
                        PaymentButton(action: {})
                            .frame(height: 50)
                    }
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(20)
                    .offset(y: -20)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: productList[0])
    }
}
