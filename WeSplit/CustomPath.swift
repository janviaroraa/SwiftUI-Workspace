//
//  CustomPath.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import SwiftUI

struct CustomPath: View {
    var body: some View {
        ScrollView {
            VStack {
                Path { path in
                    path.move(to: CGPoint(x: 200, y: 100))
                    path.addLine(to: CGPoint(x: 100, y: 300))
                    path.addLine(to: CGPoint(x: 300, y: 300))
                    path.addLine(to: CGPoint(x: 200, y: 100))
                }
                .fill(.red)
            }
        }
    }
}

// The bottom 2 edges look quite sharp, but the topmost edge is kinda broken. This is because SwiftUI ensures that lines connect neatly up with what come before them and after them, rather than being a series of individual lines. Since the last line has no connection, so there's nothing to make the connection.
// Soln 1: Close the sub-path
// Soln 2: Use rounded edges
struct CustomPath2: View {
    var body: some View {
        ScrollView {
            VStack {
                Path { path in
                    path.move(to: CGPoint(x: 200, y: 100))
                    path.addLine(to: CGPoint(x: 100, y: 300))
                    path.addLine(to: CGPoint(x: 300, y: 300))
                    path.addLine(to: CGPoint(x: 200, y: 100))

                    path.closeSubpath()
                }
                .stroke(.pink, lineWidth: 10)
            }
        }
    }
}

// Smooth rounded edges
struct CustomPath3: View {
    var body: some View {
        ScrollView {
            VStack {
                Path { path in
                    path.move(to: CGPoint(x: 200, y: 100))
                    path.addLine(to: CGPoint(x: 100, y: 300))
                    path.addLine(to: CGPoint(x: 300, y: 300))
                    path.addLine(to: CGPoint(x: 200, y: 100))
                }
                .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
            }
        }
    }
}

// Main difference between paths and shape are the reusability.
// Paths are used to design one specific thing (i.e. draw these exact points), whereas Shapes have the flexibility of drawing into some space. Also, it's easy to customize shapes.
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        return path
    }
}

struct Arc: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.midY),
            radius: rect.width/2,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: clockwise
        )
        return path
    }
}

struct ModifiedArc: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool

    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStartAngle = startAngle - rotationAdjustment
        let modifiedEndAngle = endAngle - rotationAdjustment

        var path = Path()
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.midY),
            radius: rect.width/2,
            startAngle: modifiedStartAngle,
            endAngle: modifiedEndAngle,
            clockwise: !clockwise
        )
        return path
    }
}

struct CustomShape: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                Triangle()
                    .fill(.lightBackground)
                    .frame(width: 200, height: 200)

                Triangle()
                    .stroke(.lightBackground, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                    .frame(width: 200, height: 200)

                Arc(startAngle: .degrees(0), endAngle: .degrees(150), clockwise: true)
                    .stroke(.lightBackground, lineWidth: 10)
                    .frame(width: 200, height: 200)

                ModifiedArc(startAngle: .degrees(0), endAngle: .degrees(150), clockwise: true)
                    .stroke(.lightBackground, lineWidth: 10)
                    .frame(width: 200, height: 200)

                ModifiedArc(startAngle: .degrees(-90), endAngle: .degrees(90), clockwise: true)
                    .stroke(.lightBackground, lineWidth: 10)
                    .frame(width: 200, height: 200)
            }
        }
    }
}

#Preview {
    CustomShape()
}
