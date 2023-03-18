//
//  ContentView.swift
//  SecondNature
//
//  Created by Eric Johnson on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    
    @StateObject var habit = Habits()
    
    @State private var showingAddHabit = false
    @State private var habitCompletionTracker = [UUID: Int]()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.mint.ignoresSafeArea()
                ScrollView {
                    ForEach(habit.habits) { item in
                        NavigationLink {
                            HabitDetail(habit: habit, habitItem: item)
                        } label: {
                            HStack {
                                
                                Spacer()
                                
                                Image(systemName: "\(item.symbol)")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                                VStack {
                                    Text(item.habitName)
                                        .font(.title)
                                        .foregroundColor(.white)
                                        Text("Days Completed: \(item.daysComplete)")
                                            .foregroundColor(.white).opacity(0.8)
                                        Text(item.datesCompleted.isEmpty ? "" : "Last Completed: \(printLastDateFromHabit(info: item))")
                                            .foregroundColor(.white).opacity(0.8)
                                }
                                
                                Spacer()
                                Spacer()
                                
                                Group {
                                    if !completedToday(info: item) {
                                        Button {
                                            countDay(info: item)
                                            addDateToHabit(info: item)
                                        } label: {
                                            Image(systemName: "checkmark.circle")
                                                .imageScale(.large)
                                        }
                                        .frame(width: 40, height: 40)
                                        .background(.green)
                                        .opacity(0.80)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .foregroundColor(.white)
                                    }
                                }
                                
                                Spacer()
                                
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 100)
                            .background(.ultraThinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                    }
                }
                .padding([.horizontal, .bottom])
                .navigationTitle("SecondNature")
                .toolbar {
                    Button {
                        showingAddHabit = true
                        
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .frame(width: 35, height: 35)
                            .background(.ultraThinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    
//                  Test Habits
//                    Button {
//                        let newHabit = HabitItem(symbol: "figure.run", habitName: "Running", habitDesc: "", hasGoal: true, goalDays: 100)
//                        habit.habits.append(newHabit)
//                        habitCompletionTracker[newHabit.id] = 0
//                        //datesCompleted[newHabit.id] = [getDate()]
//                    } label: {
//                        Image(systemName: "figure.run")
//                            .foregroundColor(.white)
//                    }
                }
                .sheet(isPresented: $showingAddHabit) {
                    AddHabit(habit: habit)
                }
            }
        }
    }
    
    func countDay(info: HabitItem) {
        habit.habits[getIndex(id: info.id)].daysComplete = info.daysComplete + 1
    }
    
    func getDate() -> [Int] {
        let monthDayYear = Calendar.current.dateComponents([.month, .day, .year], from: Date.now)
        let month = monthDayYear.month ?? 0
        let day = monthDayYear.day ?? 0
        let year = monthDayYear.year ?? 0
        
        return [month, day, year]
    }
    
    func completedToday(info: HabitItem) -> Bool {
        getDate() == info.datesCompleted.last
    }
    
    func addDateToHabit(info: HabitItem) {
        habit.habits[getIndex(id: info.id)].datesCompleted = info.datesCompleted + [getDate()]
    }
    
    func getIndex(id: UUID) -> Int {
        for index in 0..<habit.habits.count {
            if id == habit.habits[index].id {
                return index
            }
        }
        fatalError("Could Not Find Index")
    }
    
    func printLastDateFromHabit(info: HabitItem) -> String {
        if info.datesCompleted.isEmpty { return "" }
        
        if let date = info.datesCompleted.last {
            return "\(date[0]) / \(date[1]) / \(date[2] - 2000)"
        } else {
            return ""
        }
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
