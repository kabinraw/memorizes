//
//  ContentView.swift
//  Memorizes
//
//  Created by Kabindra on 10/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            
            CardView(isFaceUp: true)
            CardView()
            CardView(isFaceUp: true)
            CardView()
        }
        
        .foregroundStyle(.orange)
        .padding()
        
    }
}

#Preview {
    ContentView()
}
