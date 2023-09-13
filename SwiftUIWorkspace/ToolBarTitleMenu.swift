//
//  ToolBarTitleMenu.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 13/09/23.
//

import SwiftUI

struct ToolBarTitleMenu: View {
    
    @State private var title: String = "Title"
    
    var body: some View {
        NavigationStack {
            Text("ToolBarTitleMenu")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbarTitleMenu {
                    ForEach(0..<8) { index in
                        Button {
                            title = "Title \(index)"
                        } label: {
                            Text("Title \(index)")
                        }
                    }
                }
        }
    }
}

struct ToolBarTitleMenu_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarTitleMenu()
    }
}
