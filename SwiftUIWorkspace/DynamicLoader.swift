//
//  DynamicLoader.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 09/09/23.
//

import SwiftUI

struct DynamicLoader: View {
    
    @State private var isLoading: Bool = false
    @State private var color: Color = .pink
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            Circle()
                .trim(from: .zero, to: 0.6)
                .stroke(LinearGradient(colors: [color, .black.opacity(0.1)], startPoint: .leading, endPoint: .trailing), style: StrokeStyle(lineWidth: 8, lineCap: .round))
                .frame(width: 60, height: 60)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isLoading)
        }
        .onReceive(timer) { _ in
            withAnimation(.easeOut) {
                isLoading = true
                color = Color(
                    red: Double.random(in: 0...1),
                    green: Double.random(in: 0...1),
                    blue: Double.random(in: 0...1)
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DynamicLoader()
    }
}


/**

Timer.publish(every: 1, on: .main, in: .common):
 
This is the creation of a Timer publisher using the Timer class in SwiftUI's Combine framework. Here's what each part of this section does:

every: 1: This part specifies that the Timer should emit a value every 1 second (i.e., it will produce an event every second).

on: .main: It specifies that the Timer should operate on the main thread. This is important because UI-related operations should typically be performed on the main thread to ensure a smooth user interface.

in: .common: This part specifies that the Timer should be scheduled in the common run loop mode. The common mode allows the Timer to work while the user interacts with the app, preventing it from being blocked by other operations.

.autoconnect(): This is a method applied to the Timer publisher. The autoconnect() method is used to automatically connect (or start) the Timer publisher when it is added to a Combine pipeline. In other words, you don't need to manually call .connect() to start the Timer; it will start emitting values as soon as it's part of a Combine chain.

 **/
