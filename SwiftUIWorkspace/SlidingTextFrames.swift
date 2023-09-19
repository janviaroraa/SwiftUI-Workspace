//
//  SlidingTextFrames.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 19/09/23.
//

import SwiftUI

struct SlidingTextFrames: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("Description Description Description Description Description Description Description Description Description Description Description Description")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0,
                    y: 10
                )
        )
    }
}

struct SlidingTextFrames_Previews: PreviewProvider {
    static var previews: some View {
        SlidingTextFrames()
    }
}
