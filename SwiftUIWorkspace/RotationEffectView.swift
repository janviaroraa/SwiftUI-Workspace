//
//  RotationEffectView.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 01/10/23.
//

import SwiftUI

struct RotationEffectView: View {
    @State private var animate:Bool = false
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            Image("Image1")
                .resizable()
                .scaledToFill()
                .frame(width: 300,height: 300)
                .clipShape(Circle())
                .overlay(Circle().stroke(.white,lineWidth: 2))
                .shadow(radius: 10)
                .rotation3DEffect(Angle(degrees: animate ? 180 : 0), axis: (x:0.0, y: 1.0, z: 0.0))
                .onTapGesture {
                    withAnimation(.interpolatingSpring(stiffness: 30, damping: 3)){
                        animate.toggle()
                    }
                }
        }
    }
}

struct RotationEffectView_Previews: PreviewProvider {
    static var previews: some View {
        RotationEffectView()
    }
}
