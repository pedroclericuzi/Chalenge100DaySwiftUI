//
//  ButtomImage.swift
//  GuessTheFlag
//
//  Created by Pedro Clericuzi on 24/09/24.
//

import SwiftUI

struct ButtomImage: View {
    var body: some View {
        Button(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/, role: .destructive) {
            print("Olá mundo")
        }
        
        Button("Botao 1") {
            
        }.buttonStyle(.bordered)
        
        Button("Botao 2", role: .destructive) {
            
        }.buttonStyle(.bordered)
        
        Button("Botao 3") {
            
        }.buttonStyle(.borderedProminent)
        
        Button("Botao 4", role: .destructive) {
            
        }.buttonStyle(.borderedProminent)
        
        Button(action: {
            print("Clube Náutico Capibaribe")
        }, label: {
            Image("timba").resizable().frame(width: 100, height: 150)
        })
        
        Button(action: {
            print("Editar")
        }, label: {
            Label("Edit", systemImage: "pencil.circle")
        })
        
    }
}

#Preview {
    ButtomImage()
}
