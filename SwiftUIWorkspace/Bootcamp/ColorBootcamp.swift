//
//  ColorBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 10/09/23.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0))
//                Color(UIColor.secondarySystemBackground)
                Color("ColorSetBootcamp")
                
            )
            .frame(width: 200, height: 100)
//            .shadow(radius: 10)
            .shadow(
                color: Color.blue
                    .opacity(0.6),
                radius: 10,
                x: 10,
                y: 10)
            
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}

/**
 
 Color. primary = black / white depending on the appearance (dark / light mode)
 
 UIColor.secondarySystemBackground = very light gray
 
 secondarySystemBackground
 tertiarySystemBackground
 systemGroupedBackground
 systemGroupedBackground
 secondarySystemGroupedBackground
 tertiarySystemGroupedBackground
 systemFill
 secondarySystemFill
 tertiarySystemFill
 quaternarySystemFill
 lightText ------ for a dark background
 darkText -------- for a light background
 groupTableViewBackground
 

 
 */
