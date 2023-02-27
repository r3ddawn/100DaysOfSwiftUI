//
//  ContentView.swift
//  Edutainment
//
//  Created by Eric Johnson on 2/25/23.
//

import SwiftUI

struct GenerateQuestionLists {
    var tableMax: Int
    private var questionAnswerList: [[Int]] {
        var list = [[Int]]()
        
        for x in 1...12 {
            for n in 1...tableMax {
                list.append([x, n, x * n])
            }
        }
        return list
    }
    
    func getQuestion(_ num: Int) -> String {
        "\(questionAnswerList[num][0]) x \(questionAnswerList[num][1]) = "
        
    }
    
    func getAnswer(_ num: Int) -> Int {
        questionAnswerList[num][2]
    }
    
    func count() -> Int {
        questionAnswerList.count
    }
}

struct ContentView: View {
    @State private var currentQuestion = ""
    @State private var currentAnswer = 0
    @State private var answeredQuestions = [String]()
    @State private var questionCount = 0
    
    @State private var numOfQuestionOptions = [5, 10, 20]
    @State private var numOfQuestionPicked = 10
    @State private var tableMaximum = 10
    @State private var userAnswer = ""
    @State private var userScore = 0
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    @State private var showingSettings = true
    
    var body: some View {
            NavigationView {
                VStack {
                    Text("")
                        .navigationTitle("Edutainment")
                    
                    Section {
                        if showingSettings {
                            Text("Setup")
                                .font(.headline)
                            Stepper("Tables up to:    \(tableMaximum)", value: $tableMaximum, in: 2...12)
                                .font(.headline)
                            Picker("Number of Questions", selection: $numOfQuestionPicked) {
                                ForEach(numOfQuestionOptions, id: \.self) {
                                    Text("\($0)")
                                }
                            }
                            .pickerStyle(.segmented)
                            Button {
                                showingSettings.toggle()
                            } label: {
                                Text("Save")
                            }
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 100, height: 25)
                            .background(LinearGradient(gradient: Gradient(colors: [.teal, .blue, .teal]), startPoint: .top, endPoint: .bottom))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    } // Game Settings
                    
                    Section {
                        HStack {
                            
                            Spacer()
                            
                            Text(currentQuestion)
                                .font(.title)
                            TextField("Answer", text: $userAnswer)
                                .fixedSize()
                                .textFieldStyle(.roundedBorder)
                                .border(Color.blue)
                                .keyboardType(.numberPad)
                            Button {
                                submitAnswer()
                                if showingSettings { showingSettings.toggle() }
                            } label: {
                                Text("Submit")
                            }
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 75, height: 25)
                            .background(LinearGradient(gradient: Gradient(colors: [.teal, .blue, .teal]), startPoint: .top, endPoint: .bottom))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Spacer()
                        }
                        .padding(50)
                        
                        ForEach(answeredQuestions, id: \.self) { answer in
                            Text(answer)
                                .font(.title)
                        }
                        
                        Spacer()
                    }
                }
                .navigationBarTitleDisplayMode(.automatic)
                .toolbar {
                    Button {
                        showingSettings.toggle()
                    } label: {
                        Text(showingSettings ? "Hide Setup" : "Show Setup")
                    }
                }
            }
            
            .onAppear(perform: startGame)
            .onSubmit(submitAnswer)
            .alert(alertTitle, isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(alertMessage)
            }
    }
    
//  Make it go Vroom
    func startGame() {
        let list = GenerateQuestionLists(tableMax: tableMaximum)
        let num = Int.random(in: 0...list.count())
        
        currentQuestion = list.getQuestion(num)
        currentAnswer = list.getAnswer(num)
        userAnswer = ""
    }
    
    func checkAnswer() -> Bool {
        currentAnswer == Int(userAnswer) ?? 0
    }
    
    func submitAnswer() {
        questionCount += 1
        if checkAnswer() { userScore += 1 }
        let image = checkAnswer() ? "   ✅" : "   ❌"
        answeredQuestions.append (currentQuestion + userAnswer + image)
        if questionCount >= numOfQuestionPicked {
            alertTitle = "Game Over"
            alertMessage = "Your Score: \(userScore) / \(numOfQuestionPicked)"
            showingAlert.toggle()
            completeReset()
        } else {
            startGame()
        }
    }
    
    func completeReset() {
        startGame()
        answeredQuestions = [String]()
        userScore = 0
        questionCount = 0
        showingSettings.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
