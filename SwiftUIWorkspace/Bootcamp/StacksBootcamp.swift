//
//  StacksBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 18/09/23.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 30, height: 30)
            }
            
            HStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 40, height: 40)
            }
            
            VStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 40, height: 40)
            }
            
            HStack(alignment: .center, spacing: 20) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 40, height: 40)
            }
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 60, height: 60)
            }
            
            VStack(alignment: .leading, spacing: 0) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 60, height: 60)
            }
            
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 30, height: 30)
            }
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}

/// Zstack = zIndex (back to front)
