//
//  ContentView.swift
//  iExpense
//
//  Created by Eric Johnson on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .foregroundColor(.accentColor)
                .font(.title)
            Text("Hello, World!")
                .foregroundColor(.accentColor)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
