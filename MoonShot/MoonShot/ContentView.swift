//
//  ContentView.swift
//  MoonShot
//
//  Created by Eric Johnson on 3/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var gridView = true
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            Group {
                if gridView {
                    MyGridView(astronauts: astronauts, missions: missions)
                } else {
                    MyListView(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("MoonShot")
            .toolbar {
                Button {
                    gridView.toggle()
                } label: {
                    Image(systemName: gridView ? "list.bullet" : "square.grid.2x2")
                }
            }
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
