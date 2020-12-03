//
//  Cardify.swift
//  Memorize
//
//  Created by Evgeniy Goncharov on 03.12.2020.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUP: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUP {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: lineWidth)
                content
            } else {
                    RoundedRectangle(cornerRadius: cornerRadius).fill()
            }
        }
    }
    private let cornerRadius: CGFloat = 10.0
    private let lineWidth: CGFloat = 3
}

extension View {
    func cardify(isFaceUP: Bool) -> some View {
        self.modifier(Cardify(isFaceUP: isFaceUP))
    }
}