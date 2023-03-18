//
//  Edit.swift
//  SecondNature
//
//  Created by Eric Johnson on 3/18/23.
//

import SwiftUI

struct Edit: View {
    var habit: Habits
    var habitItem: HabitItem
    
    @State private var name = String()
    @State private var desc = String()
    @State private var symbol = String()
    
    @Environment(\.dismiss) var dismiss
    
    var symbolList = ["questionmark.circle", "heart", "figure.walk", "figure.run", "pencil", "scribble", "pencil.and.outline", "trash", "book", "graduationcap", "figure.2.arms.open", "figure.2.and.child.holdinghands", "figure.and.child.holdinghands", "figure.roll", "figure.core.training", "figure.mind.and.body"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField(habitItem.habitName, text: $name)
                    .foregroundColor(.black)
                TextField(habitItem.habitDesc, text: $desc, axis: .vertical)
                    .lineLimit(15, reservesSpace: true)
                    .foregroundColor(.black)
                Picker("Habit Symbol", selection: $symbol) {
                    ForEach(symbolList, id: \.self) {
                        Image(systemName: $0)
                    }
                }
            }
            .opacity(0.8)
            .scrollContentBackground(.hidden)
            .background(Color.mint)
            .navigationTitle("Edit Habit")
            .toolbar {
                ToolbarItem {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "x.circle")
                            .foregroundColor(.white)
                            .frame(width: 35, height: 35)
                            .background(.ultraThinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        removeHabit(id: habitItem.id)
                        dismiss()
                    } label: {
                        Text("Delete")
                            .frame(width: 100, height: 35)
                            .background(.red)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                
                ToolbarItem (placement: .bottomBar) {
                    Spacer()
                }
                
                ToolbarItem (placement: .bottomBar) {
                    Button {
                        var updatedInfo = habitItem
                        if !name.isEmpty { updatedInfo.habitName = name }
                        if !desc.isEmpty { updatedInfo.habitDesc = desc }
                        if !symbol.isEmpty { updatedInfo.symbol = symbol }
                        habit.habits[getIndex(id: habitItem.id)] = updatedInfo
                        dismiss()
                    } label: {
                        Text("Update")
                    }
                    .foregroundColor(.white)
                    .frame(width: 100, height: 35)
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
    }
    func removeHabit(id: UUID) {
        for index in 0..<habit.habits.count {
            if habit.habits[index].id == id {
                habit.habits.remove(at: index)
                return
            }
        }
    }
    func getIndex(id: UUID) -> Int {
        for index in 0..<habit.habits.count {
            if id == habit.habits[index].id {
                return index
            }
        }
        fatalError("Could Not Find Index")
    }
}

struct Edit_Previews: PreviewProvider {
    static var previews: some View {
        Edit(habit: Habits(),
             habitItem: HabitItem(
                symbol: "heart",
                habitName: "Eat Heart Healthy",
                habitDesc: "Be more conscious in what I eat and how it affects my body",
                hasGoal: false,
                goalDays: 0
             ))
    }
}
