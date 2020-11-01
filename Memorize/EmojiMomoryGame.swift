//
//  EmojiMomoryGame.swift
//  Memorize
//
//  Created by Evgeniy Goncharov on 01.11.2020.
//
// This is a ViewModel

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards : emojis.count) { pairIndex in
        return emojis[pairIndex]
        
       }
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card>{
         model.cards
    }
    
    // MARK: - Insert(s)
    
    func chose(card: MemoryGame<String>.Card){
        model.chose(card: card)
        
    }
}
