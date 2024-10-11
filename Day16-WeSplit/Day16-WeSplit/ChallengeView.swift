//
//  ChallengeView.swift
//  Day16-WeSplit
//
//  Created by Pedro Clericuzi on 20/09/24.
//

import SwiftUI

enum UnidadesDeMedidas: String {
    case Celsius = "Celsius"
    case Fahrenheit = "Fahrenheit"
    case Kelvin = "Kelvin"
}

struct TemperatureConverter {
    func celsiusToFahrenheit(_ celsius: Double) -> Double {
        return (celsius * 9/5) + 32
    }
    
    func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
        return (fahrenheit - 32) * 5/9
    }
    
    func celsiusToKelvin(_ celsius: Double) -> Double {
        return celsius + 273.15
    }
    
    func kelvinToCelsius(_ kelvin: Double) -> Double {
        return kelvin - 273.15
    }
    
    func fahrenheitToKelvin(_ fahrenheit: Double) -> Double {
        return celsiusToKelvin(fahrenheitToCelsius(fahrenheit))
    }
    
    func kelvinToFahrenheit(_ kelvin: Double) -> Double {
        return celsiusToFahrenheit(kelvinToCelsius(kelvin))
    }
}

struct ChallengeView: View {
    @State private var valorTemp = 0.0
    private var medidas: [UnidadesDeMedidas] = [.Celsius, .Fahrenheit, .Kelvin]
    @State private var unidadeEscolhidaDe: UnidadesDeMedidas = .Celsius
    @State private var unidadeEscolhidaPara: UnidadesDeMedidas = .Fahrenheit
    @FocusState private var isKeyboardOpenned: Bool
    
    var valorConversao: Double {
        let converter = TemperatureConverter()
        if unidadeEscolhidaDe == .Celsius && 
            unidadeEscolhidaPara == .Fahrenheit {
            return converter.celsiusToFahrenheit(valorTemp)
        } else if unidadeEscolhidaDe == .Fahrenheit &&
                    unidadeEscolhidaPara == .Celsius {
            return converter.fahrenheitToCelsius(valorTemp)
        } else if unidadeEscolhidaDe == .Celsius &&
            unidadeEscolhidaPara == .Kelvin {
            return converter.celsiusToKelvin(valorTemp)
        } else if unidadeEscolhidaDe == .Kelvin &&
                    unidadeEscolhidaPara == .Celsius {
            return converter.kelvinToCelsius(valorTemp)
        } else if (unidadeEscolhidaDe == .Fahrenheit &&
                   unidadeEscolhidaPara == .Kelvin) {
            return converter.fahrenheitToKelvin(valorTemp)
        } else if (unidadeEscolhidaDe == .Kelvin &&
                   unidadeEscolhidaPara == .Fahrenheit) {
            return converter.kelvinToFahrenheit(valorTemp)
        } else {
            return 0.0
        }
    }
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Temperatura", value: $valorTemp, format: .number)
                    .focused($isKeyboardOpenned)
                    .keyboardType(.decimalPad)
                Picker("De", selection: $unidadeEscolhidaDe, content:{
                    ForEach(medidas, id: \.self) { medida in
                        Text("\(medida)")
                    }
                })
                
                Picker("Para", selection: $unidadeEscolhidaPara, content:{
                    ForEach(medidas, id: \.self) { medida in
                        Text("\(medida)")
                    }
                })
                
                HStack {
                    Text("Valor convertido").bold()
                    Text("\(String(format: "%.2f", valorConversao))")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .trailing)
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }.navigationTitle("Calcular Temperatura").navigationBarTitleDisplayMode(.inline)
        }.toolbar(content: {
            if isKeyboardOpenned == true {
                Button("Fechar") {
                    isKeyboardOpenned = false
                }
            }
        })
    }
}

#Preview {
    ChallengeView()
}
