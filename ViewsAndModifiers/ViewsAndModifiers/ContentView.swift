//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Eric Johnson on 2/16/23.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func title() -> some View {
        modifier(TitleModifier())
    }
}

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .title()
        }
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
