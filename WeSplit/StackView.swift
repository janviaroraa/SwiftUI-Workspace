//
//  StackView.swift
//  WeSplit
//
//  Created by Janvi Arora on 03/01/25.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottom) {
            content

            Text(text)
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
                .padding(6)
        }
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .background(.blue)
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }

    func addWatermark(text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct StackView: View {
    var body: some View {
        Button("Do nothing") {

        }
        .frame(width: 200, height: 200)
        .background(.red)

        Text("Janvi Arora")
            .modifier(Title())

        Text("Adarsh Pandey")
            .titleStyle()

        Color.yellow
            .frame(width: 200, height: 200)
            .addWatermark(text: "Copyright © 2021 Janvi Arora")


//        ZStack {
//            VStack(spacing: 0) {
//                Color.red
//                Color.blue
//            }
//
//            Text("Janvi Arora")
//                .foregroundColor(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//        }
//        .ignoresSafeArea()
    }
}

#Preview {
    StackView()
}

/*
 ---------------------------
 ZStack {
     Text("Hello, World!")
 }
 .background(.blue)
 ---------------------------
 ZStack {
     Text("Hello, World!")
     .background(.blue)
 }
 ---------------------------

 These both give same result. So, how to make the entire background color to blue?

 Solution:
 // Leaves out safe area
 ZStack {
     Color.blue
     Text("Hello, World!")
 }
 */


/*
 Color.primary
 The device theme color. Usually used with texts, labels etc...

 Color.secondary
 Again, the device theme color but with some opacity lower than 100%. It has translucency behind it.

 Example:
 ZStack {
     Color.blue
     Color.secondary
     Text("Hello, World!")
 }
 So, a blue color will be there but with some blackishness on top of it.
 */


/*
 to ignore safe areas and get the color layout out all over the screen.

 ZStack {
     Color.blue
     Text("Hello, World!")
 }
 .ignoresSafeArea()
 */


/*
 When we use .foregroundColor(.secondary), it shows greyish color but when we use .foregroundStyle(.secondary), it will give a combination of (red + blue) giving us the vibrant (vibrancy) effect. This makes our text stands out perfectly.
 */
