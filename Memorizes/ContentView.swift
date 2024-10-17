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
            let emojis = ["👻", "🎃", "❄️", "😱", "💀", "☠️", "🥶", "😱"]
            
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        
        .foregroundStyle(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}
