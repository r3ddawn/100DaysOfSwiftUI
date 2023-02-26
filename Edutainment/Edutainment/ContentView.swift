//
//  ContentView.swift
//  Edutainment
//
//  Created by Eric Johnson on 2/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var multiplicationTable = 6
    @State private var answers = [Int]()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors:[.black, .purple, .teal, .white]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            Color.secondary.ignoresSafeArea()
            VStack {
                Text("What multiplication tables would you like to see?")
                    .foregroundColor(.white)
                HStack {
                    Spacer()
                    
                    Button {
                        if multiplicationTable > 2 {
                            multiplicationTable -= 1
                        }
                    } label: {
                        Image(systemName: "minus")
                            .redMinusButton()
                    }
                    
                    Spacer()
                    
                    Text("\(multiplicationTable)")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button {
                        if multiplicationTable < 12 {
                            multiplicationTable += 1
                        }
                    } label: {
                        Image(systemName: "plus")
                            .greenPlusButton()
                    }
                    
                    ForEach(0..<3) { _ in
                        Spacer()
                    }
                    
                    Button {
                        //More to come
                    } label: {
                        Text("Select")
                            .selectButton()
                    }
                    
                    Spacer()
                } // Custom stepper
                
                VStack {
                    ForEach(1..<(12 + 1)) { num in
                        HStack {
                            Text("\(num) x \(multiplicationTable) = ")
                                .font(.title)
                        }
                    }
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
