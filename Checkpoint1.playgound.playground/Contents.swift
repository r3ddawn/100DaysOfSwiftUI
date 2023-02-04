import Cocoa

//Celsius to Fahrenheit Conversion

func celsiusTempConversion(cTemp: Double) -> Double {
    return ((cTemp * 9) / 5) + 32
    }

let tempCelsius = 50.0
let tempFahrenheit = celsiusTempConversion(cTemp: tempCelsius)

print("\(tempCelsius)°C is \(tempFahrenheit)°F")

