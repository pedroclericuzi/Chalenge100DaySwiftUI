//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Pedro Clericuzi on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    
    @State private var answer = ""
    @State private var showAlert = false
    
    @State var score = 0
    @State var tentativas = 0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack {
                VStack {
                    Text("Clique na bandeira")
                    Text("\(countries[correctAnswer])").font(.largeTitle.bold())
                }.foregroundColor(.secondary).padding(.top)
                
                VStack(spacing: 30) {
                    ForEach(0..<3, id:\.self) { i in
                        Button(action: {
                            checkResult(clicked: i)
                        }, label: {
                            Image(countries[i])
                                .clipShape(.capsule)
                                .shadow(radius: 10)
                        })
                    }
                }.padding(.bottom)
            }.frame(maxWidth: .infinity)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.horizontal, 20)
                
        }.alert("Você \(answer)", isPresented: $showAlert, actions: {
            Button("Retry", role: .cancel) {
                tryAgain()
            }
            Button("Cancel", role: .destructive) {
                tentativas = 0
                score = 0
            }
        }, message: {
            Text("Score: \(score) de \(tentativas)")
        })
    }
    
    func checkResult(clicked: Int) {
        if clicked == correctAnswer {
            answer = "acertou"
            score += 1
        } else {
            answer = "errou"
        }
        tentativas += 1
        showAlert.toggle()
    }
    
    func tryAgain() {
        countries = countries.shuffled()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
