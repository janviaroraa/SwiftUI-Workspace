//
//  Animations.swift
//  WeSplit
//
//  Created by Janvi Arora on 06/01/25.
//

import SwiftUI

struct Animations: View {
    @State private var animationAmount = 1.0
    @State private var animationAmount0 = 1.0
    @State private var animationAmount2 = 1.0
    @State private var animationAmount3 = 0.0
    @State private var animationAmount4 = 0.0
    @State private var enabled = false
    @State private var enabled1 = false
    @State private var enabled2 = false

    var body: some View {
        VStack {
            Button("Tap Me!") {
                animationAmount += 1
            }
            .padding(40)
            .background(.black)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke()
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                    .animation(.easeInOut(duration: 1)
                        .repeatForever(autoreverses: false)
                    )
            ).onAppear {
                animationAmount = 2
            }

            Button("Tap Me!") {
                animationAmount0 += 1
            }
            .padding(40)
            .background(.black)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount0)

            Button("Tap ME!") {
                withAnimation {
                    animationAmount3 += 360
                }
            }
            .padding(40)
            .background(.purple)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotation3DEffect(.degrees(animationAmount3), axis: (x: 0, y: 1, z: 0))

            Button("Tap ME!") {
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                    animationAmount4 += 360
                }
            }
            .padding(40)
            .background(.gray)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotation3DEffect(.degrees(animationAmount4), axis: (x: 0, y: 1, z: 0))

            Button("Tap ME!") {
                enabled.toggle()
            }
            .padding(40)
            .background(enabled ? .green : .red)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: enabled ? 40 : 0))
            .animation(.default, value: enabled)

            Button("Tap ME!") {
                enabled1.toggle()
            }
            .padding(40)
            .background(enabled1 ? .green : .red)
            .animation(.default, value: enabled1)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: enabled1 ? 40 : 0))
            .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled1)

            Button("Tap ME!") {
                enabled2.toggle()
            }
            .padding(40)
            .background(enabled2 ? .green : .red)
            .animation(nil, value: enabled2)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: enabled2 ? 40 : 0))
            .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled2)
        }
    }
}

#Preview {
    Animations()
}
