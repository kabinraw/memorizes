//
//  CardView.swift
//  Memorizes
//
//  Created by Kabindra on 10/14/24.
//

import SwiftUI

struct CardView: View {
    
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 16)
                    .strokeBorder(lineWidth: 2)
                Text("💀")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 16)
            }
            
        }
    }
}

#Preview {
    CardView()
}
