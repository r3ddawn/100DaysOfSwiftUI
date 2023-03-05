//
//  MissionView.swift
//  MoonShot
//
//  Created by Eric Johnson on 3/4/23.
//

import SwiftUI

struct MissionView: View {
    let astronautPassThrough: [String: Astronaut]
    let mission: Mission

    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.6)
                        .padding(.top)
                    
                    Text(mission.formattedLaunchDate)
                        .padding(.top)
                    
                    VStack(alignment: .leading) {
                        
                        PaulsDivider()

                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)

                        Text(mission.description)
                        
                        PaulsDivider()
                        
                        Text("Crew")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
                
                CrewMemberScrollView(mission: mission, astronauts: astronautPassThrough)
            }
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
    
    init(mission: Mission, astronauts: [String: Astronaut]) {
        self.mission = mission
        self.astronautPassThrough = astronauts
    }
}

struct MissionView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")

    static var previews: some View {
        MissionView(mission: missions[5], astronauts: astronauts)
            .preferredColorScheme(.dark)
    }
}
