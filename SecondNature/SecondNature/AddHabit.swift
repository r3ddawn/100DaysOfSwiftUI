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
    
    var symbolList = ["questionmark.circle", "heart", "figure.walk", "figure.run", "pencil", "scribble", "pencil.and.outline", "trash", "book", "graduationcap", "figure.2.arms.open", "figure.2.and.child.holdinghands", "figure.and.child.holdinghands", "figure.roll", "figure.core.training", "figure.mind.and.body"]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                TextField("New Habit's Name", text: $habitName)
                TextField("Habit's description...", text: $habitDesc, axis: .vertical)
                    .lineLimit(15, reservesSpace: true)
                Picker("Habit's Symbol", selection: $symbol) {
                    ForEach(symbolList, id: \.self) {
                        Image(systemName: $0)
                    }
                }
//                Toggle("Day Count Goal?", isOn: $hasGoal)
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
            .opacity(0.8)
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
                        .foregroundColor(.white)
                        .frame(width: 100, height: 35)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
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
