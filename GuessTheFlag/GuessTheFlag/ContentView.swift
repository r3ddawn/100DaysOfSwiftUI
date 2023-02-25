//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Eric Johnson on 2/13/23.
//

import SwiftUI

struct flagImage: View {
    let name: String
    
    var body: some View {
        Image(name)
            .renderingMode(.original)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .shadow(radius: 5)
    }
}

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var userScore = 0
    @State private var flagChoice = 0
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var opacities = [1.0, 1.0, 1.0]
    @State private var rotationAmount = [0.0, 0.0, 0.0]
    @State private var scale = [1.0, 1.0, 1.0]
    
       
    var body: some View {
        print(countries)
        
        return ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                
                Spacer()
                
                Text("Guess The Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                VStack (spacing: 20){
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            //.foregroundColor(.white)
                            .font(.largeTitle.weight(.semibold))
                    }
                    ForEach(0..<3) { number in
                        Button {
                            flaggedTapped(number)
                            withAnimation {
                                changeOpacityAndScale()
                                rotationAmount[number] += 360
                            }
                        } label: {
                            flagImage(name: countries[number])
                                .opacity(self.opacities[number])
                                .rotation3DEffect(.degrees(self.rotationAmount[number]), axis: (x: 0, y: 1, z: 0))
                                .scaleEffect(self.scale[number])
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                
                Spacer()
                Spacer()
                
                Text("Score: \(userScore)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            if scoreTitle == "Correct" {
                Text("Your score is \(userScore)")
            } else {
                Text("You choose the \(countries[flagChoice]) flag")
            }
        }
        
    }
    func flaggedTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            userScore += 1
        } else {
            scoreTitle = "Wrong"
            flagChoice = number
        }
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = (Int.random(in: 0...2))
        opacities = [1.0, 1.0, 1.0]
        scale = [1.0, 1.0, 1.0]
    }
    
    func changeOpacityAndScale() {
        for num in 0...2 {
            if num != correctAnswer {
                opacities[num] = 0.25
                scale[num] *= 0.5
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
