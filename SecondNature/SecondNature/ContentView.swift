//
//  ContentView.swift
//  SecondNature
//
//  Created by Eric Johnson on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var habit = Habits()
    
    @State private var showingAddHabit = false
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    ForEach(habit.habits) { item in
                        NavigationLink {
                            //Habit Detail to come
                        } label: {
                            HStack {
                                
                                Spacer()
                                
                                Image(systemName: "\(item.symbol)")
                                    .imageScale(.large)
                                
                                Spacer()
                                
                                VStack {
                                    Text(item.habitName)
                                        .font(.title)
                                    if item.hasGoal {
                                        Text("Days Complete: \(item.daysComplete)")
                                    }
                                }
                                
                                Spacer()
                                Spacer()
                                
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "plus")
                                }
                                .frame(width: 45, height: 45)
                                .background(.green)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .foregroundColor(.white)
                                
                                Spacer()
                                
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 75)
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
                    }
                    
//                  Test Habits
                    Button {
                        let newHabit = HabitItem(symbol: "figure.run", habitName: "Running", habitDesc: "", hasGoal: true, goalDays: 100)
                        habit.habits.append(newHabit)
                    } label: {
                        Image(systemName: "figure.run")
                    }
                }
                .sheet(isPresented: $showingAddHabit) {
                    AddHabit(habit: habit)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
