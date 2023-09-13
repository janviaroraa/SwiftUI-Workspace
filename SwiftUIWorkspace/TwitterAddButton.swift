//
//  TwitterButton.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 13/09/23.
//

import SwiftUI

struct TwitterButton: View {
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: "plus")
                .resizable()
                .frame(width: 16, height: 16)
        }
        .buttonStyle(.twitterButtonPost)
    }
}

struct TwitterButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .frame(width: 60, height: 60)
            .background(.blue, in: Circle())
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            .animation(.spring(), value: configuration.isPressed)
            .shadow(radius: 3)
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomTrailing)
            .padding(15)
    }
}

extension ButtonStyle where Self == TwitterButtonStyle {
    static var twitterButtonPost: TwitterButtonStyle {
        .init()
    }
}

struct TwitterButton_Previews: PreviewProvider {
    static var previews: some View {
        TwitterButton()
    }
}
