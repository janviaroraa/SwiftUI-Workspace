//
//  CustomImageView.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import SwiftUI

struct CustomImageView: View {
    var body: some View {
        VStack {
            Image("test")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)

            Image("test")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            Image("test")
                .resizable()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    CustomImageView()
}
