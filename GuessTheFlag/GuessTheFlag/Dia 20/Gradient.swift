//
//  Gradient.swift
//  GuessTheFlag
//
//  Created by Pedro Clericuzi on 24/09/24.
//

import SwiftUI

struct Gradient: View {
    var body: some View {
        VStack {
            LinearGradient(stops: [
                .init(color: .white, location: 0.20),
                .init(color: .blue, location: 0.47),
                .init(color: .black, location: 0.65),
            ], startPoint: .top, endPoint: .bottom)
            
            RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
            
            AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
            
            Text("Your content")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.white)
                .background(.red.gradient)
        }
    }
}

#Preview {
    Gradient()
}
