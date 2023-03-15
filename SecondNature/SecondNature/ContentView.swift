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
    @State private var datesCompleted = [UUID: [[Int]]]()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.gray.ignoresSafeArea()
                ScrollView {
                    ForEach(habit.habits) { item in
                        NavigationLink {
                            //Habit Detail to come
                        } label: {
                            HStack {
                                
                                Spacer()
                                
                                Image(systemName: "\(item.symbol)")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .scaledToFit()
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                                VStack {
                                    Text(item.habitName)
                                        .font(.title)
                                        .foregroundColor(.white)
                                    if item.hasGoal {
                                        Text("Days Completed: \(getDays(info: item))")
                                            .foregroundColor(.white)
                                        Text(isZeroPrint(info: item) ? "" : "Last Completed: \(printDateLastCompleted(info: item))")
                                            .foregroundColor(.white)
                                    }
                                }
                                
                                Spacer()
                                Spacer()
                                
                                Group {
                                    if !completedToday(info: item) {
                                        Button {
                                            countDay(info: item)
                                            addDateToDict(info: item)
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
                    Button {
                        let newHabit = HabitItem(symbol: "figure.run", habitName: "Running", habitDesc: "", hasGoal: true, goalDays: 100)
                        habit.habits.append(newHabit)
                        habitCompletionTracker[newHabit.id] = 0
                        //datesCompleted[newHabit.id] = [getDate()]
                    } label: {
                        Image(systemName: "figure.run")
                            .foregroundColor(.white)
                    }
                }
                .sheet(isPresented: $showingAddHabit) {
                    AddHabit(habit: habit)
                }
            }
        }
    }
    func countDay(info: HabitItem) {
        var currentCount = habitCompletionTracker[info.id] ?? 0
        currentCount += 1
        
        habitCompletionTracker[info.id] = currentCount
    }
    
    func getDays(info: HabitItem) -> Int {
        habitCompletionTracker[info.id] ?? 0
    }
    
    func getDate() -> [Int] {
        let date = Date.now
        let monthDayYear = Calendar.current.dateComponents([.month, .day, .year], from: date)
        let month = monthDayYear.month ?? 0
        let day = monthDayYear.day ?? 0
        let year = monthDayYear.year ?? 0
        
        return [month, day, year]
    }
    
    func addDateToDict(info: HabitItem) {
        let date = [getDate()]
        let id = info.id
        var dateArray = datesCompleted[id] ?? [[0, 0, 0]]
        dateArray += date
        
        datesCompleted[id] = dateArray
    }
    
    func dateLastCompleted(info: HabitItem) -> [Int] {
        let id = info.id
        let dateArray = datesCompleted[id] ?? [[0, 0, 0]]
        
        return dateArray.last ?? [0]
    }
    
    func printDateLastCompleted(info: HabitItem) -> String {
        let date  = dateLastCompleted(info: info)
        let month = date[0]
        let day = date[1]
        let year = date[2]
        
        return "\(month) / \(day) / \(year)"
    }
    
    func isZeroPrint(info: HabitItem) -> Bool {
        let printOut = printDateLastCompleted(info: info)
        return printOut == "0 / 0 / 0"
    }
    
    func completedToday(info: HabitItem) -> Bool {
        getDate() == dateLastCompleted(info: info)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
