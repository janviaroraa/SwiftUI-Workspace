//
//  GradientView.swift
//  WeSplit
//
//  Created by Janvi Arora on 04/01/25.
//

import SwiftUI

struct GradientView: View {
    @State private var showingAlert = false
    @State private var toggleButton = false

    var body: some View {
        VStack {
            LinearGradient(
                stops: [
                    .init(color: .red, location: 0.33),
                    .init(color: .green, location: 0.66)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(width: 100, height: 100)

            RadialGradient(
                colors: [.blue, .purple, .yellow],
                center: .center, startRadius: 10,
                endRadius: 50
            )
            .frame(width: 100, height: 100)

            AngularGradient(
                colors: [.blue, .black, .pink, .green, .yellow],
                center: .center
            )
            .frame(width: 100, height: 100)

            Button("Delete 1") {
                delete2()
            }

            Button("Delete 2", action: delete2)

            Button("Delete 3", role: .destructive, action: delete2)

            Button("Delete 4", action: delete2)
                .buttonStyle(.bordered)

            Button("Delete 5", role: .destructive, action: delete2)
                .buttonStyle(.bordered)

            Button("Delete 6", action: delete2)
                .buttonStyle(.borderedProminent)

            Button("Delete 7", role: .destructive, action: delete2)
                .buttonStyle(.borderedProminent)

            Button("Delete 8", action: delete2)
                .buttonStyle(.borderedProminent)
                .tint(.mint)

            Button {
                delete2()
            } label: {
                Text("Delete 9")
                    .foregroundColor(.purple)
                    .padding()
                    .background(.yellow)
            }

            Image(systemName: "pencil")
                .frame(width: 20, height: 20)

            Button {
                delete2()
            } label: {
                Image(systemName: "pencil")
            }

            Button {
                delete2()
            } label: {
                Label("Edit", systemImage: "pencil")
            }

            Button {
                showingAlert = true
            } label: {
                Text("Delete 10")
                    .foregroundColor(.purple)
                    .padding()
            }
            .alert("Important Message", isPresented: $showingAlert) {
                Button("Delete", role: .destructive) { }
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("Message Description")
            }

            // Ternary modifier
            Button("Click ME!") {
                toggleButton.toggle()
            }
            .foregroundColor(toggleButton ? .red : .blue)
        }
    }

    func delete2() {
        print("Delete 2")
    }
}

#Preview {
    GradientView()
}
