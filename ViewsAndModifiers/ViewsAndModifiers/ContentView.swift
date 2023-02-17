//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Eric Johnson on 2/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Hello, World!") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
