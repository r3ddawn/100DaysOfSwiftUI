//
//  AddHabit.swift
//  SecondNature
//
//  Created by Eric Johnson on 3/11/23.
//

import SwiftUI

struct AddHabit: View {
    
    var habit: Habits
    
    @State private var habitName = ""
    @State private var symbol = "figure.walk"
    @State private var habitDesc = ""
    @State private var hasGoal = false
    @State private var goalDays = 0
    
    var symbolList = ["questionmark.circle", "heart", "figure.walk", "figure.run"]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                TextField("New Habit", text: $habitName)
                Picker("Habits Symbol", selection: $symbol) {
                    ForEach(symbolList, id: \.self) {
                        Image(systemName: $0)
                    }
                }
                TextField("Habit description...", text: $habitDesc, axis: .vertical)
                    .lineLimit(3, reservesSpace: true)
                Toggle("Daily Streak Goal?", isOn: $hasGoal)
                Group {
                    if hasGoal {
                        Picker("Number of days", selection: $goalDays) {
                            ForEach(0..<366) { num in
                                Text("\(num)")
                            }
                        }
                        
                    }
                }
            }
            .scrollContentBackground(.hidden)
            .background(Color.mint)
            .navigationTitle("Add a new habit")
            .toolbar {
                
                Button {
                    let newHabit = HabitItem(symbol: symbol, habitName: habitName, habitDesc: habitDesc, hasGoal: hasGoal, goalDays: goalDays)
                    habit.habits.append(newHabit)
                    dismiss()
                } label: {
                    Text("Save")
                    
                }
                .disabled(habitName.isEmpty)
            }
        }
        .padding([.bottom, .horizontal])
        .background(Color.mint)
    }
}

struct AddHabit_Previews: PreviewProvider {
    static var previews: some View {
        AddHabit(habit: Habits())
    }
}
