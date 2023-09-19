//
//  TabViewSample.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 19/09/23.
//

import SwiftUI

struct TabViewSample: View {
    var body: some View {
        TabView {
            Text("Home")
                .font(.title)
                .tabItem {
                    Label("Home", systemImage: "homekit")
                }
            Text("List")
                .font(.title)
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
            Text("Notifications")
                .font(.title)
                .tabItem {
                    Label("Notifications", systemImage: "text.bubble")
                }
            Text("Settings")
                .font(.title)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct BadgeView: View {
    var value: Int
    
    var body: some View {
        Text("\(value)")
            .font(.caption)
            .padding(4)
            .background(Circle().fill(Color.red))
            .foregroundColor(.white)
            .offset(x: 8, y: -8)
    }
}

struct TabViewSample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSample()
    }
}
