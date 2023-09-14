//
//  ImageSliderView.swift
//  FirstApp
//
//  Created by Chathura Hetti Arachchi on 31/08/23.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 0
    var sliders: [String] = ["001", "002", "003", "004", "005", "006"]

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image(sliders[currentIndex])
                    .resizable()
                    .frame(width: .infinity, height: 180)
                    .scaledToFit()
                    .cornerRadius(16)
            }
            HStack {
                ForEach(0 ..< sliders.count) { index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .padding()
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
                if self.currentIndex + 1 == self.sliders.count {
                    self.currentIndex = 0
                } else {
                    self.currentIndex += 1
                }
            }
        }
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
    }
}
