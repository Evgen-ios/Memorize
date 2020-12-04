//
//  Cardify.swift
//  Memorize
//
//  Created by Evgeniy Goncharov on 03.12.2020.
//

import SwiftUI

struct Cardify: ViewModifier, AnimatableModifier {
    var rotation: Double
    
    init(isFaceUP: Bool) {
        rotation = isFaceUP ? 0 : 180
    }
    
    var isFaceUP: Bool {
        rotation < 90
    }
    
    var animatableData: Double {
        get { return rotation }
        set { rotation = newValue }
        
    }
    
    func body(content: Content) -> some View {
        ZStack {
            Group {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: lineWidth)
                content
            }
                .opacity(isFaceUP ? 1 : 0)
            RoundedRectangle(cornerRadius: cornerRadius).fill()
                .opacity(isFaceUP ? 0 : 1)
        }
        .rotation3DEffect(Angle.degrees(rotation), axis: (0,1,0))
    }
    private let cornerRadius: CGFloat = 10.0
    private let lineWidth: CGFloat = 3
}

extension View {
    func cardify(isFaceUP: Bool) -> some View {
        self.modifier(Cardify(isFaceUP: isFaceUP))
    }
}
