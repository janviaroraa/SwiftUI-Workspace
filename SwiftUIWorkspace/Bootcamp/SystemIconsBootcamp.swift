//
//  SystemIconsBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 12/09/23.
//

import SwiftUI

struct SystemIconsBootcamp: View {
    var body: some View {
        VStack {
            Image(systemName: "heart")
            
            Image(systemName: "heart.fill")
                .font(.largeTitle)
                .foregroundColor(.red)
            
            /// only gives an outer box to heart
            /// it's size won't inc. unless resizeable is called
            Image(systemName: "heart.fill")
                .frame(width: 100, height: 100)
            
            /// takes much of frame as possible
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fill)
                /// similar to scaleToFill()
                /// can use clipped() with scaleToFill() - it will clip the image to its bounds (image cut ho jayegi)
            
            /// tries to stay inside frame
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                ///  similar to scaleToFit()
            
            /// multi-color images in SF symbols
            Image(systemName: "person.fill.badge.plus")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.blue)
            
            Image(systemName: "person.fill.badge.plus")
                .renderingMode(.original)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.brown)
            
        }
    }
}

struct SystemIconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SystemIconsBootcamp()
    }
}
