//
//  ContentView.swift
//  WordScramble
//
//  Created by Eric Johnson on 2/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    @State private var userScore = 0
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField("Enter your word", text: $newWord)
                        .autocapitalization(.none)
                } footer: {
                    Text("Score: \(userScore)")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                }
                
                Section {
                    ForEach(usedWords, id: \.self) { word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                            Spacer()
                            Text("\(word.count * 100) pts")
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.automatic) //Had to add this to get it to match Pauls example
            .toolbar {
                Button("New Word", action: resetGame)
            }
            .navigationTitle(rootWord)
            
            .onSubmit(addNewWord)
            
            .onAppear(perform: startGame)
            
            .alert(errorTitle, isPresented: $showingError) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(errorMessage)
            }
            
        }
    }
    
//    ----- Program methods below -----
    
    func addNewWord() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        guard answer != rootWord else {
            wordError(title: "Well thats cheating!", message: "You cannot guess the prompt word")
            return
        }
        
        guard tooShort(word: answer) else {
            wordError(title: "Word is too short", message: "All guesses must be greated than 3 letters")
            return
        }
        
        guard isOriginal(word: answer) else {
            wordError(title: "Word used already", message: "Be more original")
            return
        }
        
        guard isPossible(word: answer) else {
            wordError(title: "Word not possible", message: "You cannot spell that word from '\(rootWord)'!")
            return
        }
        
        guard isReal(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't just make them up, you know!")
            return
        }
        
        userScore += (answer.count * 100)
        
        withAnimation {
            usedWords.insert(answer, at: 0)
        }
        newWord = ""
    }
    
    func startGame() {
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                let allWords = startWords.components(separatedBy: "\n")
//                print(allWords)
                rootWord = allWords.randomElement() ?? "silkworm"
//                print("Selected Word is: " + rootWord)
                return
            }
        }
        fatalError("Could not load start.txt from bundle.")
    }
    
    func isOriginal(word: String) -> Bool {
        !usedWords.contains(word)
    }
    
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }
        
        return true
    }
    
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")

        return misspelledRange.location == NSNotFound
    }
    
    func tooShort(word: String) -> Bool {
        return word.count > 3
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }
    
    func resetGame() {
        startGame()
        usedWords.removeAll()
        userScore = 0
    }
    
 }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
