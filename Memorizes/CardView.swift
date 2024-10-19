//
//  CardView.swift
//  Memorizes
//
//  Created by Kabindra on 10/14/24.
//

import SwiftUI

struct CardView: View {
    
    @State var isFaceUp: Bool = true
    var content: String
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base
                    .foregroundStyle(.white)
                base
                    .strokeBorder(lineWidth: 2)
                Text(content)
                    .font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            self.isFaceUp.toggle()
        }
    }
}

//#Preview {
//    CardView()
//}
