//
//  DotDividerView.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 12/09/23.
//

import SwiftUI

struct DotDividerView: View {
    var body: some View {
        Line()
            .stroke(style: .init(dash: [20]))
            .foregroundStyle(.blue)
            .frame(height: 1)
    }
}


struct Line:Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct DotDividerView_Previews: PreviewProvider {
    static var previews: some View {
        DotDividerView()
    }
}
