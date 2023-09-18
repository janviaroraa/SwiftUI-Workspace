//
//  TextFieldAlert.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 18/09/23.
//

import SwiftUI

struct TextFieldAlert: View {
    
    @State private var isPresented: Bool = false
    @State private var name: String = "Janvi Arora"
    
    var body: some View {
        VStack {
            Text(name)
                .font(.largeTitle)
                .padding(.vertical, 20)
            Button("Edit") {
                isPresented = true
            }
            
            .alert("Edit your name", isPresented: $isPresented) {
                /// $ sign is called as wrapper
                /// Binding<String>
                TextField(name, text: $name)
                Button("Save", action: {})
            } message: {
                Text("Please Enter your name to edit.")
            }
        }
    }
}

struct TextFieldAlert_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldAlert()
    }
}
