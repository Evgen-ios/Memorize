//
//  MemoryGame.swift
//  Memorize
//
//  Created by Evgeniy Goncharov on 01.11.2020.
//
// This is a Model

import Foundation


struct MemoryGame <CardContent> {
    var cards: Array<Card>
    
    func chose(card: Card) {
        print("Card chose: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
            
        }
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp : Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
    
}
