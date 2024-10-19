//
//  ContentView.swift
//  Memorizes
//
//  Created by Kabindra on 10/14/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🎃", "❄️", "😱", "💀", "☠️", "🥶", "😱"]
    @State var cardCount: Int = 4
    
    var body: some View {
        
        VStack {
            ScrollView {
                cards
            }
            Spacer()
            cardCountAdjuster
        }
        .padding()
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button {
            
            cardCount += offset
        } label: {
            Image(systemName: symbol)
        }
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundStyle(.orange)
    }
    
    var cardCountAdjuster: some View {
        HStack {
            cardRemover
            Spacer()
            cardAdder
        }
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    var cardRemover: some View {
        return cardCountAdjuster(by: -1, symbol: "minus.rectangle.fill")
    }
    
    var cardAdder: some View {
        return cardCountAdjuster(by: +1, symbol: "plus.rectangle.fill")
//        Button {
//            guard cardCount < emojis.count else { return }
//            cardCount += 1
//        } label: {
//            Image(systemName: "plus.rectangle.fill")
//        }
    }
    
    
}

#Preview {
    ContentView()
}
