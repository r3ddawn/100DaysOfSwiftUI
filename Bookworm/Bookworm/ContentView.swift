//
//  ContentView.swift
//  Bookworm
//
//  Created by Eric Johnson on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    @FetchRequest (sortDescriptors: []) var students: FetchedResults<Student>
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
