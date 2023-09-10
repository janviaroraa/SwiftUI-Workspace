//
//  ShapesBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 10/09/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        VStack {
            Circle()
//                .fill(Color.blue)
                .frame(width: 50)
//                .foregroundColor(Color.pink)
//                .stroke()
//                .stroke(Color.red, lineWidth: 30)
//                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
            
//                .trim(from: 0.2, to: 0.9)
//                .stroke(Color.purple, lineWidth: 20)
                
            
            Ellipse()
                .frame(width: 50, height: 100)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Rectangle()
                .frame(width: 50, height: 100)
            
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 50, height: 50)
            
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 50, height: 100)
            
            Capsule()
                .frame(width: 50, height: 100)
            
            Capsule()
                .frame(width: 100, height: 50)
            
            Capsule(style: .continuous)
                .frame(width: 100, height: 50)
            // default style is circular
                
        }
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}

/**
 
While .fill(Color.red) is a standard SwiftUI modifier used to set the fill color of a shape like a Circle, .foreground(Color.red) is not a standard modifier, and its behavior would depend on any custom implementation you have in your project. Typically, you would use .fill to set the fill color for shapes in SwiftUI.
 
Frame: can provide either width or height here. it will act as it's diameter.
 
Stroke:  just perimeter of circle
 
Linecap:  butt, round, square
 
 
 
 **/
