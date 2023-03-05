//
//  MyGridView.swift
//  MoonShot
//
//  Created by Eric Johnson on 3/5/23.
//

import SwiftUI

struct MyGridView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]

    let colums = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: colums) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        VStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .padding()
                            
                            VStack {
                                Text(mission.displayName)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                Text(mission.formattedLaunchDate)
                                    .font(.caption)
                                    .foregroundColor(.white.opacity(0.5))
                            }
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(.lightBackground)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.lightBackground)
                        )
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
    init(astronauts: [String: Astronaut], missions: [Mission]) {
        self.astronauts = astronauts
        self.missions = missions
    }
}

struct MyGridView_Previews: PreviewProvider {
    static let astronautsTest: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static let missionsTest: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        MyGridView(astronauts: astronautsTest, missions: missionsTest)
            .preferredColorScheme(.dark)
    }
}
