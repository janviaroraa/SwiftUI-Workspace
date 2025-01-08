//
//  Geomety.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import SwiftUI

struct Geomety: View {
    var body: some View {
        GeometryReader { geo in
            Image("test")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

#Preview {
    Geomety()
}
