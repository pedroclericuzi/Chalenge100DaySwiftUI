//
//  Alerts.swift
//  GuessTheFlag
//
//  Created by Pedro Clericuzi on 24/09/24.
//

import SwiftUI

struct Alerts: View {
    @State var showingAlert = false
    var body: some View {
        VStack {
            Text("Hello, World!")
            Button("Mostrar alerta", action: {
                showingAlert.toggle()
            })
        }.alert("Alerta", isPresented: $showingAlert, actions: {
            Button("Cancelar", role: .destructive) {}
            Button("Ok", role: .cancel) {}
        }, message: {
           Text("Algum texto aqui")
        })
    }
}

#Preview {
    Alerts()
}
