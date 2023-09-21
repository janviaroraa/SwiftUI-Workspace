//
//  InitializerBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 21/09/23.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let number: Int
    let fruit: String
    
/// below commented func is created under the hood by SwiftUI. No need to explicitely create an init method.
    
///    init(backgroundColor: Color, number: Int, fruit: String) {
///        self.backgroundColor = backgroundColor
///        self.number = number
///        self.fruit = fruit
///    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text(String(number))
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(fruit)
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(backgroundColor: .orange, number: 100, fruit: "Oranges")
            InitializerBootcamp(backgroundColor: .red, number: 200, fruit: "Apples")
        }
    }
}
