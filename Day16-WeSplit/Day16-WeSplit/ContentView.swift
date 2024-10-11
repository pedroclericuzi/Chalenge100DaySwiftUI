//
//  ContentView.swift
//  Day16-WeSplit
//
//  Created by Pedro Clericuzi on 18/09/24.
//

import SwiftUI

struct ContentView: View {
    let timesPE: [String] = ["Náutico", "Afogados", "Decisão", "Jaguar", "Central", "Retro"]
    @State var timeSelecionado = "Náutico"
    @FocusState var keyboardOpen: Bool
    @State var valorTotal = 0.0
    @State var gorgeta = 10
    
    var tiposGorgetas = [0, 5, 10, 15]
    
    var body: some View {
        NavigationStack {
            Form {
                
                Section("Dia 17") {
                    
                    TextField("Informe o valor", value: $valorTotal, format: .currency(code: Locale.current.currency?.identifier ?? "BRL"))
                        .keyboardType(.decimalPad)
                        .focused($keyboardOpen)
                    
                    Picker("Selecione a gorgeta", selection: $gorgeta, content: {
                        ForEach(tiposGorgetas, id:\.self) { tip in
                            Text(tip, format: .percent)
                        }
                    })
                    
                    HStack {
                        Text("Total").bold()
                        Text(calcValorFinal(), format: .currency(code: "BRL")).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .trailing)
                    }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    
                }
                
                Section("Dia 17") {
                    TextField("Informe o valor", value: $valorTotal, format: .currency(code: Locale.current.currency?.identifier ?? "BRL")).keyboardType(.decimalPad)
                }
                
                Section("Dia 17") {
                    Text(valorTotal, format: .currency(code: Locale.current.currency?.identifier ?? "BRL"))
                }
                
                Section("Dia 17") {
                    Picker("Times PE 2025", selection: $timeSelecionado, content: {
                        ForEach(timesPE, id:\.self) {
                            Text("\($0)")
                        }
                    })
                }
                
                Section("Dia 16") {
                    Button(action: { }, label: {
                        Text("Alerta 1")
                    })
                    
                    Button(action: { }, label: {
                        Text("Alerta 2")
                    })
                    
                    Button(action: { }, label: {
                        Text("Alerta 3")
                    })
                    
                    Button(action: { }, label: {
                        Text("Alerta 4")
                    })
                }
                
                Section("Dia 16") {
                    Text("Texto 1")
                    Text("Texto 3")
                    Text("Texto 3")
                    Text("Texto 4")
                }
            }.navigationTitle("HOME")
                .navigationBarTitleDisplayMode(.inline).toolbar(content: {
                    if keyboardOpen == true {
                        Button("Fechar") {
                            keyboardOpen = false
                        }
                    }
                })
        }
    }
    
    func calcValorFinal() -> Double {
        let pct: Double = Double(gorgeta)  / 100
        let valorGorgeta: Double = valorTotal * pct
        return valorTotal + valorGorgeta
    }
}

#Preview {
    ContentView()
}
