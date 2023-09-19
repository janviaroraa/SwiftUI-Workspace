//
//  PaddingAndSpacingBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 19/09/23.
//

import SwiftUI

struct PaddingAndSpacingBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .frame(width: 130, height: 60)
                .background(.brown)
            
            Text("Hello, World!")
                .padding()
                .background(.brown)
            
            Text("Hello, World!")
                .background(.yellow)
                .padding()
                .background(.brown)
            
            Text("Hello, World!")
                .background(.yellow)
                .padding(.all, 30)
                .background(.brown)
            
            Text("Hello, World!")
                .background(.yellow)
                .padding(.leading, 30)
                .background(.brown)
            
            Text("Hello, World!")
                .background(.yellow)
                .padding(.top, 30)
                .background(.brown)
            
            Text("Hello, World!")
                .background(.yellow)
                .padding(.all, 20)
                .padding(.leading, 30)
                .background(.brown)
            
            Text("Hello, World!")
                .padding(.all, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.brown)
            
            Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!")
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.brown)
            
            Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!")
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.brown)
        }
    }
}

struct PaddingAndSpacingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacingBootcamp()
    }
}
