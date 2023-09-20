//
//  SpacerBootcamp2.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 20/09/23.
//

import SwiftUI

struct SpacerBootcamp2: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "xmark")
                    .font(.title)
                
                Spacer()
                    .frame(height: 5)
                    .background(Color.red)
                
                Image(systemName: "gear")
                    .font(.title)
            }
            .padding(10)
            
            Spacer()
                .frame(width: 5)
                .background(Color.red)
        }
    }
}

struct SpacerBootcamp2_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp2()
    }
}
