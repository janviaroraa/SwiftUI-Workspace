//
//  CircleView.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import SwiftUI

struct CircleView: View {
    let image: Image

    var body: some View {
        image
            .resizable()
            .frame(width: 150, height: 150)
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white))
            .shadow(radius: 7)
    }

    init(image: Image) {
        self.image = image
    }
}

#Preview {
    CircleView(image: Image("svp"))
}
