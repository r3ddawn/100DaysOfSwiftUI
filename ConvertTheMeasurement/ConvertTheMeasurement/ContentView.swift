//
//  ContentView.swift
//  ConvertTheMeasurement
//
//  Created by Eric Johnson on 2/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var userTempInput: String = "0"
    @State private var inputTempType = "Celsius"
    @FocusState private var amountIsFocused: Bool
    
    var tempConversion: String {
        let inputTemp = Double(userTempInput) ?? 0
        
        switch inputTempType {
            case "Celsius":
                let fConvert = (inputTemp * 9/5) + 32
                let kConvert = (inputTemp + 273.15)
                return "\(inputTemp) °C,   \(Double(round(100*fConvert)/100)) °F,   \(Double(round(100*kConvert)/100)) °K"
            case "Fahrenheit":
                let cConvert = (inputTemp - 32) * 5/9
                let kConvert = (inputTemp - 32) * 5/9 + 273.15
                return "\(Double(round(100*cConvert)/100)) °C,   \(inputTemp) °F,   \(Double(round(100*kConvert)/100))°K"
            case "Kelvin":
                let fConvert = (inputTemp - 273.15) * 9/5 + 32
                let cConvert = inputTemp - 273.15
                return "\(Double(round(100*cConvert)/100)) °C,   \(Double(round(100*fConvert)/100)) °F,   \(inputTemp) °K"
            default:
                return "Something went wrong..."
        }
    }
    
    let tempChoices = ["Celsius", "Fahrenheit", "Kelvin"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Temperature", text: $userTempInput)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    Picker("Units", selection: $inputTempType) {
                        ForEach(tempChoices, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Enter Temperature")
                }
                
                Section {
                    Text(tempConversion)
                }
            }
            .navigationTitle("Unit Conversion")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        amountIsFocused = false
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
