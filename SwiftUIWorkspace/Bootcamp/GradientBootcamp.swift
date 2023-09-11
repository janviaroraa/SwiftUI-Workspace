//
//  GradientBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 11/09/23.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        Gradient(colors: [.blue, .green, .red])
                    )
                    .frame(width: 250, height: 150)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        LinearGradient(
                            colors: [.blue, .green, .red],
                            startPoint: .bottomLeading,
                            endPoint: .topLeading)
                    )
                    .frame(width: 250, height: 150)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        LinearGradient(
                            colors: [.blue, .green, .red],
                            startPoint: .leading,
                            endPoint: .trailing)
                    )
                    .frame(width: 250, height: 150)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        LinearGradient(
                            colors: [.blue, .green, .red],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 250, height: 150)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        RadialGradient(
                            colors: [.blue, .green, .red],
                            center: .center,
                            startRadius: 30,
                            endRadius: 100)
                    )
                    .frame(width: 250, height: 150)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        RadialGradient(
                            colors: [.blue, .red],
                            center: .center,
                            startRadius: 5,
                            endRadius: 500)
                    )
                    .frame(width: 250, height: 150)
                
                /// By default, angle is 0 (right side)
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        AngularGradient(
                            colors: [.blue, .red],
                            center: .center
                        )
                    )
                    .frame(width: 250, height: 150)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        AngularGradient(
                            colors: [.blue, .red],
                            center: .center,
                            angle: .degrees(90)
                        )
                    )
                    .frame(width: 250, height: 150)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        AngularGradient(
                            colors: [.blue, .red],
                            center: .topLeading,
                            angle: .degrees(180)
                        )
                    )
                    .frame(width: 250, height: 150)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        AngularGradient(
                            colors: [.blue, .red],
                            center: .topLeading,
                            angle: .degrees(180 + 45)
                        )
                    )
                    .frame(width: 250, height: 150)
            }
        }
    }
}

struct GradientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
