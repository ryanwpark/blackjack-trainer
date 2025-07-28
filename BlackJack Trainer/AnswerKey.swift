//
//  AnswerKey.swift
//  BlackJack Trainer
//
//  Created by Ryan Park on 7/24/25.
//


import Foundation

struct CardPair: Hashable {
    let playerTotal: Int
    let dealerUpCard: Int
}

//All doubles, No Double after Split, No Surrender
struct AnswerKey {
    static let hardTotals: [CardPair: String] = [

        // Player Total: 9
        CardPair(playerTotal: 9, dealerUpCard: 2): "Hit",
        CardPair(playerTotal: 9, dealerUpCard: 3): "Double",
        CardPair(playerTotal: 9, dealerUpCard: 4): "Double",
        CardPair(playerTotal: 9, dealerUpCard: 5): "Double",
        CardPair(playerTotal: 9, dealerUpCard: 6): "Double",
        CardPair(playerTotal: 9, dealerUpCard: 7): "Hit",
        CardPair(playerTotal: 9, dealerUpCard: 8): "Hit",
        CardPair(playerTotal: 9, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 9, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 9, dealerUpCard: 14): "Hit",

        // Player Total: 10
        CardPair(playerTotal: 10, dealerUpCard: 2): "Double",
        CardPair(playerTotal: 10, dealerUpCard: 3): "Double",
        CardPair(playerTotal: 10, dealerUpCard: 4): "Double",
        CardPair(playerTotal: 10, dealerUpCard: 5): "Double",
        CardPair(playerTotal: 10, dealerUpCard: 6): "Double",
        CardPair(playerTotal: 10, dealerUpCard: 7): "Double",
        CardPair(playerTotal: 10, dealerUpCard: 8): "Double",
        CardPair(playerTotal: 10, dealerUpCard: 9): "Double",
        CardPair(playerTotal: 10, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 10, dealerUpCard: 14): "Hit",

        // Player Total: 12
        CardPair(playerTotal: 12, dealerUpCard: 2): "Hit",
        CardPair(playerTotal: 12, dealerUpCard: 3): "Hit",
        CardPair(playerTotal: 12, dealerUpCard: 4): "Stand",
        CardPair(playerTotal: 12, dealerUpCard: 5): "Stand",
        CardPair(playerTotal: 12, dealerUpCard: 6): "Stand",
        CardPair(playerTotal: 12, dealerUpCard: 7): "Hit",
        CardPair(playerTotal: 12, dealerUpCard: 8): "Hit",
        CardPair(playerTotal: 12, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 12, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 12, dealerUpCard: 14): "Hit",

        // Player Total: 13
        CardPair(playerTotal: 13, dealerUpCard: 2): "Stand",
        CardPair(playerTotal: 13, dealerUpCard: 3): "Stand",
        CardPair(playerTotal: 13, dealerUpCard: 4): "Stand",
        CardPair(playerTotal: 13, dealerUpCard: 5): "Stand",
        CardPair(playerTotal: 13, dealerUpCard: 6): "Stand",
        CardPair(playerTotal: 13, dealerUpCard: 7): "Hit",
        CardPair(playerTotal: 13, dealerUpCard: 8): "Hit",
        CardPair(playerTotal: 13, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 13, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 13, dealerUpCard: 14): "Hit",

        // Player Total: 14
        CardPair(playerTotal: 14, dealerUpCard: 2): "Stand",
        CardPair(playerTotal: 14, dealerUpCard: 3): "Stand",
        CardPair(playerTotal: 14, dealerUpCard: 4): "Stand",
        CardPair(playerTotal: 14, dealerUpCard: 5): "Stand",
        CardPair(playerTotal: 14, dealerUpCard: 6): "Stand",
        CardPair(playerTotal: 14, dealerUpCard: 7): "Hit",
        CardPair(playerTotal: 14, dealerUpCard: 8): "Hit",
        CardPair(playerTotal: 14, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 14, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 14, dealerUpCard: 14): "Hit",

        // Player Total: 15
        CardPair(playerTotal: 15, dealerUpCard: 2): "Stand",
        CardPair(playerTotal: 15, dealerUpCard: 3): "Stand",
        CardPair(playerTotal: 15, dealerUpCard: 4): "Stand",
        CardPair(playerTotal: 15, dealerUpCard: 5): "Stand",
        CardPair(playerTotal: 15, dealerUpCard: 6): "Stand",
        CardPair(playerTotal: 15, dealerUpCard: 7): "Hit",
        CardPair(playerTotal: 15, dealerUpCard: 8): "Hit",
        CardPair(playerTotal: 15, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 15, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 15, dealerUpCard: 14): "Hit",

        // Player Total: 16
        CardPair(playerTotal: 16, dealerUpCard: 2): "Stand",
        CardPair(playerTotal: 16, dealerUpCard: 3): "Stand",
        CardPair(playerTotal: 16, dealerUpCard: 4): "Stand",
        CardPair(playerTotal: 16, dealerUpCard: 5): "Stand",
        CardPair(playerTotal: 16, dealerUpCard: 6): "Stand",
        CardPair(playerTotal: 16, dealerUpCard: 7): "Hit",
        CardPair(playerTotal: 16, dealerUpCard: 8): "Hit",
        CardPair(playerTotal: 16, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 16, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 16, dealerUpCard: 14): "Hit",
    ]
    
    static let softTotals: [CardPair: String] = [

        // Player Card: 2
        CardPair(playerTotal: 2, dealerUpCard: 2): "Hit",
        CardPair(playerTotal: 2, dealerUpCard: 3): "Hit",
        CardPair(playerTotal: 2, dealerUpCard: 4): "Hit",
        CardPair(playerTotal: 2, dealerUpCard: 5): "Double",
        CardPair(playerTotal: 2, dealerUpCard: 6): "Double",
        CardPair(playerTotal: 2, dealerUpCard: 7): "Hit",
        CardPair(playerTotal: 2, dealerUpCard: 8): "Hit",
        CardPair(playerTotal: 2, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 2, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 2, dealerUpCard: 14): "Hit",

        // Player Card: 3
        CardPair(playerTotal: 3, dealerUpCard: 2): "Hit",
        CardPair(playerTotal: 3, dealerUpCard: 3): "Hit",
        CardPair(playerTotal: 3, dealerUpCard: 4): "Hit",
        CardPair(playerTotal: 3, dealerUpCard: 5): "Double",
        CardPair(playerTotal: 3, dealerUpCard: 6): "Double",
        CardPair(playerTotal: 3, dealerUpCard: 7): "Hit",
        CardPair(playerTotal: 3, dealerUpCard: 8): "Hit",
        CardPair(playerTotal: 3, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 3, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 3, dealerUpCard: 14): "Hit",
        
        
        // Player Card: 4
        CardPair(playerTotal: 4, dealerUpCard: 2): "Hit",
        CardPair(playerTotal: 4, dealerUpCard: 3): "Hit",
        CardPair(playerTotal: 4, dealerUpCard: 4): "Double",
        CardPair(playerTotal: 4, dealerUpCard: 5): "Double",
        CardPair(playerTotal: 4, dealerUpCard: 6): "Double",
        CardPair(playerTotal: 4, dealerUpCard: 7): "Hit",
        CardPair(playerTotal: 4, dealerUpCard: 8): "Hit",
        CardPair(playerTotal: 4, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 4, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 4, dealerUpCard: 14): "Hit",
        
        // Player Card: 5
        CardPair(playerTotal: 5, dealerUpCard: 2): "Hit",
        CardPair(playerTotal: 5, dealerUpCard: 3): "Hit",
        CardPair(playerTotal: 5, dealerUpCard: 4): "Double",
        CardPair(playerTotal: 5, dealerUpCard: 5): "Double",
        CardPair(playerTotal: 5, dealerUpCard: 6): "Double",
        CardPair(playerTotal: 5, dealerUpCard: 7): "Hit",
        CardPair(playerTotal: 5, dealerUpCard: 8): "Hit",
        CardPair(playerTotal: 5, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 5, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 5, dealerUpCard: 14): "Hit",
        
        // Player Card: 6
        CardPair(playerTotal: 6, dealerUpCard: 2): "Hit",
        CardPair(playerTotal: 6, dealerUpCard: 3): "Double",
        CardPair(playerTotal: 6, dealerUpCard: 4): "Double",
        CardPair(playerTotal: 6, dealerUpCard: 5): "Double",
        CardPair(playerTotal: 6, dealerUpCard: 6): "Double",
        CardPair(playerTotal: 6, dealerUpCard: 7): "Hit",
        CardPair(playerTotal: 6, dealerUpCard: 8): "Hit",
        CardPair(playerTotal: 6, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 6, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 6, dealerUpCard: 14): "Hit",
        
        // Player Card: 7
        CardPair(playerTotal: 7, dealerUpCard: 2): "Stand",
        CardPair(playerTotal: 7, dealerUpCard: 3): "Stand",
        CardPair(playerTotal: 7, dealerUpCard: 4): "Stand",
        CardPair(playerTotal: 7, dealerUpCard: 5): "Stand",
        CardPair(playerTotal: 7, dealerUpCard: 6): "Stand",
        CardPair(playerTotal: 7, dealerUpCard: 7): "Stand",
        CardPair(playerTotal: 7, dealerUpCard: 8): "Stand",
        CardPair(playerTotal: 7, dealerUpCard: 9): "Hit",
        CardPair(playerTotal: 7, dealerUpCard: 10): "Hit",
        CardPair(playerTotal: 7, dealerUpCard: 14): "Hit",
        
        // Player Card: 8
        CardPair(playerTotal: 8, dealerUpCard: 2): "Stand",
        CardPair(playerTotal: 8, dealerUpCard: 3): "Stand",
        CardPair(playerTotal: 8, dealerUpCard: 4): "Stand",
        CardPair(playerTotal: 8, dealerUpCard: 5): "Stand",
        CardPair(playerTotal: 8, dealerUpCard: 6): "Stand",
        CardPair(playerTotal: 8, dealerUpCard: 7): "Stand",
        CardPair(playerTotal: 8, dealerUpCard: 8): "Stand",
        CardPair(playerTotal: 8, dealerUpCard: 9): "Stand",
        CardPair(playerTotal: 8, dealerUpCard: 10): "Stand",
        CardPair(playerTotal: 8, dealerUpCard: 14): "Stand",
        
        // Player Card: 9
        CardPair(playerTotal: 9, dealerUpCard: 2): "Stand",
        CardPair(playerTotal: 9, dealerUpCard: 3): "Stand",
        CardPair(playerTotal: 9, dealerUpCard: 4): "Stand",
        CardPair(playerTotal: 9, dealerUpCard: 5): "Stand",
        CardPair(playerTotal: 9, dealerUpCard: 6): "Stand",
        CardPair(playerTotal: 9, dealerUpCard: 7): "Stand",
        CardPair(playerTotal: 9, dealerUpCard: 8): "Stand",
        CardPair(playerTotal: 9, dealerUpCard: 9): "Stand",
        CardPair(playerTotal: 9, dealerUpCard: 10): "Stand",
        CardPair(playerTotal: 9, dealerUpCard: 14): "Stand",
    ]
    
    static let pairs: [CardPair: String] = [
        
        // Player Card: 2
        CardPair(playerTotal: 2, dealerUpCard: 2): "Yes",
        CardPair(playerTotal: 2, dealerUpCard: 3): "Yes",
        CardPair(playerTotal: 2, dealerUpCard: 4): "Yes",
        CardPair(playerTotal: 2, dealerUpCard: 5): "Yes",
        CardPair(playerTotal: 2, dealerUpCard: 6): "Yes",
        CardPair(playerTotal: 2, dealerUpCard: 7): "Yes",
        CardPair(playerTotal: 2, dealerUpCard: 8): "No",
        CardPair(playerTotal: 2, dealerUpCard: 9): "No",
        CardPair(playerTotal: 2, dealerUpCard: 10): "No",
        CardPair(playerTotal: 2, dealerUpCard: 14): "No",

        // Player Card: 3
        CardPair(playerTotal: 3, dealerUpCard: 2): "Yes",
        CardPair(playerTotal: 3, dealerUpCard: 3): "Yes",
        CardPair(playerTotal: 3, dealerUpCard: 4): "Yes",
        CardPair(playerTotal: 3, dealerUpCard: 5): "Yes",
        CardPair(playerTotal: 3, dealerUpCard: 6): "Yes",
        CardPair(playerTotal: 3, dealerUpCard: 7): "Yes",
        CardPair(playerTotal: 3, dealerUpCard: 8): "No",
        CardPair(playerTotal: 3, dealerUpCard: 9): "No",
        CardPair(playerTotal: 3, dealerUpCard: 10): "No",
        CardPair(playerTotal: 3, dealerUpCard: 14): "No",
        
        
        // Player Card: 4
        CardPair(playerTotal: 4, dealerUpCard: 2): "No",
        CardPair(playerTotal: 4, dealerUpCard: 3): "No",
        CardPair(playerTotal: 4, dealerUpCard: 4): "No",
        CardPair(playerTotal: 4, dealerUpCard: 5): "Yes",
        CardPair(playerTotal: 4, dealerUpCard: 6): "Yes",
        CardPair(playerTotal: 4, dealerUpCard: 7): "No",
        CardPair(playerTotal: 4, dealerUpCard: 8): "No",
        CardPair(playerTotal: 4, dealerUpCard: 9): "No",
        CardPair(playerTotal: 4, dealerUpCard: 10): "No",
        CardPair(playerTotal: 4, dealerUpCard: 14): "No",
        
        // Player Card: 5
        CardPair(playerTotal: 5, dealerUpCard: 2): "No",
        CardPair(playerTotal: 5, dealerUpCard: 3): "No",
        CardPair(playerTotal: 5, dealerUpCard: 4): "No",
        CardPair(playerTotal: 5, dealerUpCard: 5): "No",
        CardPair(playerTotal: 5, dealerUpCard: 6): "No",
        CardPair(playerTotal: 5, dealerUpCard: 7): "No",
        CardPair(playerTotal: 5, dealerUpCard: 8): "No",
        CardPair(playerTotal: 5, dealerUpCard: 9): "No",
        CardPair(playerTotal: 5, dealerUpCard: 10): "No",
        CardPair(playerTotal: 5, dealerUpCard: 14): "No",
        
        // Player Card: 6
        CardPair(playerTotal: 6, dealerUpCard: 2): "Yes",
        CardPair(playerTotal: 6, dealerUpCard: 3): "Yes",
        CardPair(playerTotal: 6, dealerUpCard: 4): "Yes",
        CardPair(playerTotal: 6, dealerUpCard: 5): "Yes",
        CardPair(playerTotal: 6, dealerUpCard: 6): "Yes",
        CardPair(playerTotal: 6, dealerUpCard: 7): "No",
        CardPair(playerTotal: 6, dealerUpCard: 8): "No",
        CardPair(playerTotal: 6, dealerUpCard: 9): "No",
        CardPair(playerTotal: 6, dealerUpCard: 10): "No",
        CardPair(playerTotal: 6, dealerUpCard: 14): "No",
        
        // Player Card: 7
        CardPair(playerTotal: 7, dealerUpCard: 2): "Yes",
        CardPair(playerTotal: 7, dealerUpCard: 3): "Yes",
        CardPair(playerTotal: 7, dealerUpCard: 4): "Yes",
        CardPair(playerTotal: 7, dealerUpCard: 5): "Yes",
        CardPair(playerTotal: 7, dealerUpCard: 6): "Yes",
        CardPair(playerTotal: 7, dealerUpCard: 7): "Yes",
        CardPair(playerTotal: 7, dealerUpCard: 8): "No",
        CardPair(playerTotal: 7, dealerUpCard: 9): "No",
        CardPair(playerTotal: 7, dealerUpCard: 10): "No",
        CardPair(playerTotal: 7, dealerUpCard: 14): "No",
        
        // Player Card: 8
        CardPair(playerTotal: 8, dealerUpCard: 2): "Yes",
        CardPair(playerTotal: 8, dealerUpCard: 3): "Yes",
        CardPair(playerTotal: 8, dealerUpCard: 4): "Yes",
        CardPair(playerTotal: 8, dealerUpCard: 5): "Yes",
        CardPair(playerTotal: 8, dealerUpCard: 6): "Yes",
        CardPair(playerTotal: 8, dealerUpCard: 7): "Yes",
        CardPair(playerTotal: 8, dealerUpCard: 8): "Yes",
        CardPair(playerTotal: 8, dealerUpCard: 9): "Yes",
        CardPair(playerTotal: 8, dealerUpCard: 10): "Yes",
        CardPair(playerTotal: 8, dealerUpCard: 14): "Yes",
        
        // Player Card: 9
        CardPair(playerTotal: 9, dealerUpCard: 2): "Yes",
        CardPair(playerTotal: 9, dealerUpCard: 3): "Yes",
        CardPair(playerTotal: 9, dealerUpCard: 4): "Yes",
        CardPair(playerTotal: 9, dealerUpCard: 5): "Yes",
        CardPair(playerTotal: 9, dealerUpCard: 6): "Yes",
        CardPair(playerTotal: 9, dealerUpCard: 7): "No",
        CardPair(playerTotal: 9, dealerUpCard: 8): "Yes",
        CardPair(playerTotal: 9, dealerUpCard: 9): "Yes",
        CardPair(playerTotal: 9, dealerUpCard: 10): "No",
        CardPair(playerTotal: 9, dealerUpCard: 14): "No",
        
        // Player Card: 10
        CardPair(playerTotal: 9, dealerUpCard: 2): "No",
        CardPair(playerTotal: 9, dealerUpCard: 3): "No",
        CardPair(playerTotal: 9, dealerUpCard: 4): "No",
        CardPair(playerTotal: 9, dealerUpCard: 5): "No",
        CardPair(playerTotal: 9, dealerUpCard: 6): "No",
        CardPair(playerTotal: 9, dealerUpCard: 7): "No",
        CardPair(playerTotal: 9, dealerUpCard: 8): "No",
        CardPair(playerTotal: 9, dealerUpCard: 9): "No",
        CardPair(playerTotal: 9, dealerUpCard: 10): "No",
        CardPair(playerTotal: 9, dealerUpCard: 14): "No",
        
        // Player Card: 14
        CardPair(playerTotal: 14, dealerUpCard: 2): "Yes",
        CardPair(playerTotal: 14, dealerUpCard: 3): "Yes",
        CardPair(playerTotal: 14, dealerUpCard: 4): "Yes",
        CardPair(playerTotal: 14, dealerUpCard: 5): "Yes",
        CardPair(playerTotal: 14, dealerUpCard: 6): "Yes",
        CardPair(playerTotal: 14, dealerUpCard: 7): "Yes",
        CardPair(playerTotal: 14, dealerUpCard: 8): "Yes",
        CardPair(playerTotal: 14, dealerUpCard: 9): "Yes",
        CardPair(playerTotal: 14, dealerUpCard: 10): "Yes",
        CardPair(playerTotal: 14, dealerUpCard: 14): "Yes",
    ]
    
    
}
