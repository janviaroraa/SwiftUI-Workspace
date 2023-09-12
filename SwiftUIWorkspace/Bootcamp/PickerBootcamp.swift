//
//  PickerBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 12/09/23.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State private var contentType: Int = 0
    
    var body: some View {
        VStack {
            Picker("Content", selection: $contentType) {
                Text("Search").tag(0)
                Text("Mail").tag(1)
                Text("Favourite").tag(2)
                Text("Weather").tag(3)
            }
            .pickerStyle(.automatic)
            
            Picker("Content", selection: $contentType) {
                Text("Search").tag(0)
                Text("Mail").tag(1)
                Text("Favourite").tag(2)
                Text("Weather").tag(3)
            }
            .pickerStyle(.inline)
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
