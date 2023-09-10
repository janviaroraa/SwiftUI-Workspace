//
//  SystemColorBootcamp.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 10/09/23.
//

import SwiftUI

struct SystemColorBootcamp: View {
    var body: some View {
        VStack {
        
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor.systemFill))
                .frame(width: 150, height: 75)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor.secondarySystemFill))
                .frame(width: 150, height: 75)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor.tertiarySystemFill))
                .frame(width: 150, height: 75)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor.tertiarySystemFill))
                .frame(width: 150, height: 75)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 150, height: 75)
                
        }
    }
}

struct SystemColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SystemColorBootcamp()
    }
}
