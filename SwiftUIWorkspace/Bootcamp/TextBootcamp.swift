//
//  TextBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 10/09/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        VStack {
            Text("Text 1".lowercased())
            
            Text("Text 2".uppercased())
            
            Text("Heelo world. this is a bootcamp. this is janvi arora. etc etc etc etc etc etc etc etc etc etc")
                .font(.body)
            //            .fontWeight(.medium)
            //            .bold()
            //            .underline()
            //            .underline(true, color: Color.red)
            //            .italic()
            //            .strikethrough()
            //            .strikethrough(true, color: Color.green)
            //            .font(.system(size: 20, weight: .light, design: .serif))
            //            .multilineTextAlignment(.leading)
                .baselineOffset(10)  // space between lines
                .kerning(2)  // space between letters
                .foregroundColor(.blue)
                .frame(width: 200, height: 200, alignment: .center)
                .minimumScaleFactor(0.1)  // allowing our text to scale down 10% to fir inside the frame
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
