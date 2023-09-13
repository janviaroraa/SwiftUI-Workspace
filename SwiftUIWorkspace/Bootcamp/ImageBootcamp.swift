//
//  ImageBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 13/09/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Image("Image2")
                
                Image("Image1")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Image("Image2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipped()
                
                Image("Image1")
                    .cornerRadius(40)
                
                /// cornerRadius = height / 2 (to get circle)
                Image("Image2")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(100)
                
                Image("Image1")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                
                Image("Image2")
                    .resizable()
                    .frame(width: 300, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                
                Image("Image1")
                    .resizable()
                    .frame(width: 300, height: 200)
                    .clipShape(Ellipse())
                
                Image("logo")
                
                /// usually it changes the color of logo
                Image("logo")
                    .renderingMode(.template)
                    .foregroundColor(.pink)
            }
        }
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
