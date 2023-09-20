//
//  SpacerBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 20/09/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.brown)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
            }
            .background(Color.blue)
            
            HStack(spacing: 30) {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.brown)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
            }
            .background(Color.blue)
            
            HStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.brown)
                
                Spacer()
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
            }
            .background(Color.blue)
            
            HStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.brown)
                
                Spacer()
                    .frame(height: 5)
                    .background(Color.red)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
            }
            .background(Color.blue)
            
            HStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.brown)
                
                Spacer()
                    .frame(height: 5)
                    .background(Color.red)
                
                Rectangle()
                    .frame(width: 250, height: 50)
                    .foregroundColor(.yellow)
            }
            .background(Color.blue)
            
            HStack {
                Spacer()
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.brown)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
            }
            .background(Color.blue)
            
            HStack(spacing: 0) {
                Spacer()
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.brown)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
            }
            .background(Color.blue)
            
            HStack(spacing: 0) {
                Spacer()
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.brown)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.green)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
            }
            .background(Color.blue)
            
            HStack(spacing: 0) {
                Spacer()
                    .frame(height: 5)
                    .background(Color.red)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.brown)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.green)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
                
                Spacer()
                    .frame(height: 5)
                    .background(Color.red)
            }
            
            HStack(spacing: 0) {
                Spacer()
                    .frame(height: 5)
                    .background(Color.red)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.brown)
                
                Spacer()
                    .frame(height: 5)
                    .background(Color.red)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.green)
                
                Spacer()
                    .frame(height: 5)
                    .background(Color.red)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
                
                Spacer()
                    .frame(height: 5)
                    .background(Color.red)
            }
        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
