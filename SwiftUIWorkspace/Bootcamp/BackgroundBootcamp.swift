//
//  BackgroundBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 15/09/23.
//

import SwiftUI

struct BackgroundBootcamp: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Hello, World!")
                .background(Color.red)
            
            Text("Hello, World!")
                .background(
                    LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                )
            
            Text("Hello, World!")
                .frame(width: 150, height: 150)
                .background(
                    Circle()
                        .fill(Color.blue)
                )
            
            Text("Hello, World!")
                .frame(width: 130, height: 130)
                .background(
                    Circle()
                        .fill(Color.blue)
                )
                .frame(width: 150, height: 150)
                .background(
                    Circle()
                        .fill(Color.red)
                )
            
            Text("Hello, World!")
                .frame(width: 130, height: 130)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 130, height: 130)
                )
            
            Text("Hello, World!")
                .frame(width: 150, height: 150)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 130, height: 130)
                )
                .background(
                    Circle()
                        .fill(
                            LinearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 150, height: 150)
                )
        }
    }
}

struct BackgroundBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundBootcamp()
    }
}
