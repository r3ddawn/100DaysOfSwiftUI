//
//  ContentView.swift
//  iExpense
//
//  Created by Eric Johnson on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    
    @State private var showingBusinessExpenses = false
    
    @State private var currencyType = Locale.current.currency?.identifier ?? "USD"
    
    var body: some View {
        NavigationView {
            List {
                Text("Personal Expenses")
                
                ForEach(expenses.personalItems) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }
                        
                        Spacer()
                        Text(item.amount, format: .currency(code: currencyType))
                    }
                    .listRowBackground(pickColor(amount: item.amount))
                }
                .onDelete(perform: removePersonalItems)
                
                Text("Business Expenses")
                
                ForEach(expenses.businessItems) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }
                        
                        Spacer()
                        Text(item.amount, format: .currency(code: currencyType))
                    }
                    .listRowBackground(pickColor(amount: item.amount))
                }
                .onDelete(perform: removeBusinessItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
//                ToolbarItem(placement: .bottomBar) {
//                    Button {
//                        showingBusinessExpenses.toggle()
//                    } label: {
//                        Text(showingBusinessExpenses ? "Business" : "Personal")
//                        Image(systemName: showingBusinessExpenses ? "building" : "house")
//                    }
//                }
                ToolbarItem() {
                    Button {
                        showingAddExpense = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removeBusinessItems(at offsets: IndexSet) {
        expenses.businessItems.remove(atOffsets: offsets)
    }
    
    func removePersonalItems(at offsets: IndexSet) {
        expenses.personalItems.remove(atOffsets: offsets)
    }
    
    func pickColor(amount: Double) -> Color {
        if amount < 10 {
            return .green
        } else if amount < 100 {
            return .yellow
        } else {
            return .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
