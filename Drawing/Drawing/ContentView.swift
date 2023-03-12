//
//  ContentView.swift
//  Drawing
//
//  Created by Eric Johnson on 3/5/23.
//

import SwiftUI

struct Arrow: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.maxY / 3))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY / 3))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY / 3))
        path.move(to: CGPoint(x: rect.midX - 10, y: rect.maxY/3))
        path.addLine(to: CGPoint(x: rect.midX - 10, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX + 10, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX + 10, y: rect.maxY / 3))

        return path
    }
}

struct ContentView: View {
    @State private var lineThickness = 2.0
    var body: some View {
        VStack {
            Arrow()
                .stroke(.red, style: StrokeStyle(lineWidth: lineThickness, lineCap: .round, lineJoin: .round))
                .frame(width: 100, height: 300)
            Slider(value: $lineThickness, in: 0...10)
            Text("Current Line Weight: \(Int(lineThickness))")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
