//
//  HabitDetail.swift
//  SecondNature
//
//  Created by Eric Johnson on 3/17/23.
//

import SwiftUI

struct HabitDetail: View {
    var habit: Habits
    var habitItem: HabitItem
    
    @State private var showingEditHabit = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.mint.ignoresSafeArea()
                VStack {
                    HStack {
                        Image(systemName: habitItem.symbol)
                            .imageScale(.large)
                        Text(habitItem.habitName)
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    Text("Completion Count: \(habitItem.daysComplete)")
                        .padding(.bottom)
                    
                    Rectangle()
                        .frame(height: 1)
                        .background(.black)
                    
                    Text(habitItem.habitDesc)
                    
                    Rectangle()
                        .frame(height: 1)
                        .background(.black)
                    
                    Text("Dates Completed:")
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    ScrollView {
                        ForEach(habitItem.datesCompleted.reversed(), id: \.self) { date in
                            Text("\(date[0]) / \(date[1]) / \(date[2] - 2000)")
                        }
                    }
                }
                .padding([.horizontal, .bottom, .top])
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Spacer()
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        showingEditHabit = true
                    } label: {
                        Image(systemName: "pencil")
                            .foregroundColor(.white)
                            .frame(width: 35, height: 35)
                            .background(.ultraThinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
            .sheet(isPresented: $showingEditHabit) {
                Edit(habit: habit, habitItem: habitItem)
            }
        }
    }
}

struct HabitDetail_Previews: PreviewProvider {
    static var previews: some View {
        HabitDetail(habit: Habits(), habitItem: HabitItem(
            symbol: "heart",
            habitName: "Eat Heart Healthy",
            habitDesc: "Be more conscious in what I eat and how it affects my body",
            hasGoal: false,
            goalDays: 100,
            datesCompleted: [[1, 23, 2023], [1, 24, 2023], [1, 25, 2023], [1, 26, 2023], [1, 27, 2023], [1, 28, 2023], [1, 29, 2023], [2, 2, 2023], [2, 3, 2023]]
        ))
    }
}
