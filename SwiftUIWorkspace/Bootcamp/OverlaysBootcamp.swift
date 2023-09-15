//
//  OverlaysBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 15/09/23.
//

import SwiftUI

struct OverlaysBootcamp: View {
    var body: some View {
        VStack(spacing: 60) {
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 110, height: 110, alignment: .center)
                )
            
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50, alignment: .topLeading)
                )
                .background(
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 130, height: 130, alignment: .bottomTrailing)
                )
            
            Image(systemName: "heart.fill")
                .font(.system(size: 50))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: .black, radius: 7, x: 0, y: 10)
                    
                        .overlay (
                            Circle()
                                .fill(.black)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .foregroundColor(.white)
                                        .shadow(color: .black, radius: 7, x: 5, y: 5)
                                )
                            
                            ,alignment: .bottomTrailing
                        )
                )
        }
    }
}

struct OverlaysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OverlaysBootcamp()
    }
}
