//
//  CardView.swift
//  Memorizes
//
//  Created by Kabindra on 10/14/24.
//

import SwiftUI

struct CardView: View {
    
    @State var isFaceUp: Bool = false
    var content: String
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base
                    .foregroundStyle(.white)
                base
                    .strokeBorder(lineWidth: 2)
                Text(content)
                    .font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            self.isFaceUp.toggle()
        }
    }
}

//#Preview {
//    CardView()
//}
