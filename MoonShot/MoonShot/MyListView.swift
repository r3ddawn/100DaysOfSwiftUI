//
//  MyListView.swift
//  MoonShot
//
//  Created by Eric Johnson on 3/5/23.
//

import SwiftUI

struct MyListView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
            List(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    HStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
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
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.lightBackground)
                    )
                }
                .listRowBackground(Color.darkBackground)
            }
            .listStyle(.plain)

            .padding([.horizontal, .bottom])
            .background(.darkBackground)
        }
    init(astronauts: [String: Astronaut], missions: [Mission]) {
        self.astronauts = astronauts
        self.missions = missions
    }
}


struct MyListView_Previews: PreviewProvider {
    static let astronautsTest: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static let missionsTest: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        MyListView(astronauts: astronautsTest, missions: missionsTest)
    }
}
