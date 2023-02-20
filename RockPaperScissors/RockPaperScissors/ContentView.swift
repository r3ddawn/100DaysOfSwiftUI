//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Eric Johnson on 2/18/23.
//

import SwiftUI

struct ContentView: View {
    let playableOptions = ["✊", "🖐️" , "✌️"]
    let playableOptionsText = ["Rock", "Paper", "Scissors"]
    
    @State private var appChoice = Int.random(in: 0...2)
    @State private var playerChoice = 0
    @State private var scoreTitle = ""
    @State private var showingScore = false
    @State private var userScore = 0
    @State private var shouldWin = Bool.random()
    @State private var questionCount = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack (spacing: 20) {
                Spacer()
                Spacer()
                
                HStack {
                    Text(shouldWin ? "Beat:" : "Lose:")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .underline()
                        .padding()
                    Text(playableOptions[appChoice] + "\n" + playableOptionsText[appChoice])
                        .multilineTextAlignment(.center)
                        .font(.largeTitle)
                        .foregroundColor(.primary)
                        .frame(maxWidth: 150)
                        .padding(.vertical, 30)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                }
            
                Spacer()
                Spacer()
                Spacer()
                
                HStack {
                    ForEach(0..<3) { num in
                        Button {
                            moveSelected(num)
                        } label: {
                            Text(playableOptions[num] + "\n" + playableOptionsText[num])
                                .font(.title)
                                .foregroundColor(.primary)
                        }
                        .frame(maxWidth: 125)
                        .padding(.vertical, 30)
                        .background(.thinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    }
                }
                Spacer()
                Text("Your Score: \(userScore)")
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: questionCount >= 10 ? fullReset : appChoiceReset)
        } message: {
            if scoreTitle == "Game Cver" {
                Text("Your final score is: \(userScore)")
            } else {
            }
        }
    }
    
    func winOrLose(_ num: Int) -> Bool {
        if playerChoice == appChoice {
            if userScore >= 1 {
                userScore -= 1
            }
            return false
        }
        
        if shouldWin == checkPlayerSelection(num) {
            userScore += 1
            return true
        } else {
            if userScore >= 1 {
                userScore -= 1
            }
            return false
        }
    }
    
    func checkPlayerSelection(_ num: Int) -> Bool {
        switch appChoice {
            case 0:
                return num == 1
            case 1:
                return num == 2
            case 2:
                return num == 0
            default:
                return false
        }
    }
    
    func moveSelected(_ num: Int) {
        playerChoice = num
        questionCount += 1
        
        if winOrLose(num) {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Incorrect"
           
        }
        if questionCount >= 10 {
            scoreTitle = "Game Cver"
            
        }
        showingScore = true
    }
    
    func appChoiceReset() {
        appChoice = Int.random(in: 0...2)
        shouldWin = Bool.random()
    }
    
    func fullReset() {
        questionCount = 0
        userScore = 0
        appChoiceReset()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
