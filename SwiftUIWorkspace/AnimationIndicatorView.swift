//
//  AnimationIndicatorView.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 10/09/23.
//

import SwiftUI

struct AnimationIndicatorView: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: 0.6)
                .stroke(
                    AngularGradient(
                        gradient: Gradient(colors: [.blue, .green]),
                    center: .center
                    ),
                    style: StrokeStyle(
                        lineWidth: 8,
                        lineCap: .round,
                        dash: [0.1, 16],
                        dashPhase: 8
                    )
                )
                .frame(width: 48, height: 48)
                .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                .onAppear(){
                    withAnimation(
                        Animation
                            .linear(duration: 1)
                            .repeatForever(autoreverses: false)) {
                            isAnimating.toggle()
                        }
                }
        }
    }
}

struct AnimationIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationIndicatorView()
    }
}
