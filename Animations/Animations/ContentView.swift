//
//  ContentView.swift
//  Animations
//
//  Created by Eric Johnson on 2/24/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 3)) {
                    animationAmount += 360
                }
            }
           .padding(50)
           .background(.red)
           .foregroundColor(.white)
           .clipShape(Circle())
           .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 1, z: 1))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
