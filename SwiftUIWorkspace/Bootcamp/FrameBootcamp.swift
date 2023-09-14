//
//  FrameBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 14/09/23.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Hello, World!")
                .background(Color.cyan)
            
            Text("Hello, World! Hello, World!")
                .background(Color.cyan)
            
            Text("Hello, World!")
                .frame(width: 150, height: 30)
                .background(Color.cyan)
            
            Text("Hello, World!")
                .frame(width: 150, height: 30, alignment: .bottomLeading)
                .background(Color.cyan)
            
            Text("Hello, World!")
                .background(Color.cyan)
                .frame(width: 150, height: 30, alignment: .bottomLeading)
            
            Text("Hello, World!")
                .frame(maxWidth: .infinity)
                .background(Color.cyan)
            
            Text("Hello, World!")
                .background(Color.yellow)
                .frame(maxWidth: .infinity)
                .background(Color.cyan)
            
            Text("Hello, World!")
                .background(Color.yellow)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.cyan)
            
            Text("Hello, World!")
                .background(Color.yellow)
                .frame(width: 150, height: 50)
                .background(Color.cyan)
                .frame(width: 200, height: 70)
                .background(Color.pink)
                .frame(width: 200, height: 100)
                .background(Color.purple)
                
        }
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
