//
//  Stacks.swift
//  GuessTheFlag
//
//  Created by Pedro Clericuzi on 24/09/24.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            
            Text("Hello, world!")
                .padding(60)
                .background(.ultraThinMaterial)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Stacks()
}
