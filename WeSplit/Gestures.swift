//
//  Gestures.swift
//  WeSplit
//
//  Created by Janvi Arora on 06/01/25.
//

import SwiftUI

struct ShowSheet: View {
    @Environment(\.dismiss) var dismiss

    let name: String

    var body: some View {
        Button("Dismiss Me !") {
            dismiss()
        }
    }
}

struct Gestures: View {
    @State private var dragAmount = CGSize.zero
    @State private var isShowing = false
    @State private var showSheet = false

    var body: some View {
        VStack {
            LinearGradient(colors: [.black, .blue], startPoint: .top, endPoint: .bottom)
                .frame(width: 200, height: 200)
                .cornerRadius(20)
                .offset(dragAmount)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            self.dragAmount = value.translation
                        }
                        .onEnded { value in
                            withAnimation {
                                self.dragAmount = .zero
                            }
                        }
                )

            Button("Tap to hide/unhide !") {
                withAnimation {
                    isShowing.toggle()
                }
            }

            if isShowing {
                LinearGradient(colors: [.orange, .yellow], startPoint: .top, endPoint: .bottom)
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }

            Button("Show bottom sheet !") {
                showSheet.toggle()
            }
            .sheet(isPresented: $showSheet) {
                ShowSheet(name: "Janvi")
            }
        }
    }
}

#Preview {
    Gestures()
}
