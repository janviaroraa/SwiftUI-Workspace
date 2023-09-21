//
//  CustomSlider.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 21/09/23.
//

import SwiftUI

struct CustomSliderView: View {
    @State private var value:CGFloat = 0
    private var maxValue:CGFloat = 1
    var body: some View {
        VStack(spacing: 50) {
            CustomSlider(value: $value, maxValue: maxValue)
                .frame(height: 20)
            Slider(value: $value,in: 0...maxValue)
            //.opacity(0.5)
        }
        .padding(.horizontal,20)
    }
}


struct CustomSlider: View {
    @Binding var value:CGFloat
    private var maxValue:CGFloat
    
    init(value: Binding<CGFloat>, maxValue: CGFloat) {
        self._value = value
        self.maxValue = maxValue
    }
    var body: some View {
        GeometryReader{ proxy in
            ZStack(alignment: .center){
                Capsule()
                    .foregroundColor(.secondary)
                
                Capsule()
                    .fill(LinearGradient(gradient: .init(colors: [.red, .green]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: proxy.size.width * (CGFloat(value) / CGFloat(maxValue)))
                    .contentShape(Capsule()) 
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .overlay(Capsule().stroke(style: .init()).foregroundColor(.white))
                
            }
        }
    }
}

struct CustomSlider_Previews: PreviewProvider {
    static var previews: some View {
        CustomSlider(value: Binding.constant(CGFloat(10)), maxValue: CGFloat(100))
    }
}
