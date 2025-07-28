//
//  Functions.swift
//  BlackJack Trainer
//
//  Created by Ryan Park on 7/25/25.
//

import Foundation

//No Blackjacks, 10 Pairs
class gameLogic{
    static func deal()->[Int]{
        let cardNum1 = Int.random(in: 2...14)
//        let cardNum1 = 14
        var cardNum2:Int
        
        // Ensuring no hard totals equaling 20 or pocket Aces
        if (10...14).contains(cardNum1) {
            cardNum2 = Int.random(in: 2...9)
        } else {
            cardNum2 = Int.random(in: 2...14)
        }
//        cardNum2 = 5
//        let dealerNum = 14
        let dealerNum = Int.random(in: 2...14)
        return [cardNum1, cardNum2, dealerNum]
    }
    
    static func SolveHand(myCards: [Int], inPlay:inout Bool)->String?{
        let isSoft = isSoft(myCards: myCards)
        var correctAnswer = ""
        if isSoft.0
        {correctAnswer = getAnswerST(cardNum: isSoft.1, dealerNum: myCards[2]) ?? ""}
        else if(myCards[0] == myCards[1] && toSplit(myCards:myCards))
        {correctAnswer = "Split"}
        else{
            correctAnswer = getAnswerHT(myCards: myCards) ?? ""}
        inPlay.toggle()
        if correctAnswer == ""{print("ERROR: ", print(myCards))}
        return correctAnswer
    }

    //Check if cards are soft
    static func isSoft(myCards: [Int])->(Bool, Int){
        if myCards[0] == 14{return (true,myCards[1])}
        else if(myCards[1] == 14){return (true,myCards[0])}
        else{return (false,0)}
    }
    
    static func toSplit(myCards: [Int]) -> Bool{
        var (cardNum, dealerNum) = (myCards[0], myCards[2])
        if cardNum == 8{return true}
        else if cardNum == 5{return false}
        
        //Get Totals after reassigning values
        if (cardNum >= 11 && cardNum <= 14){
            if cardNum == 14{
                cardNum = 11
            }else{
                cardNum = 10
            }
        }
        if (dealerNum >= 11 && dealerNum <= 14){
            if dealerNum == 14{
                dealerNum = 11
            }else{
                dealerNum = 10
            }
        }
        let answerkey = AnswerKey.pairs[CardPair(playerTotal: cardNum, dealerUpCard: dealerNum)]
        return answerkey == "Yes"
        
    }

    static func getAnswerST(cardNum: Int, dealerNum: Int) -> String?{
        var (cardNum, dealerNum) = (cardNum, dealerNum)
        
        if (dealerNum >= 11 && dealerNum <= 14){
            if dealerNum == 14{
                dealerNum = 11
            }else{
                dealerNum = 10
            }
        }
        
        //Checking with dictionary
        let answerkey = AnswerKey.softTotals[CardPair(playerTotal: cardNum, dealerUpCard: dealerNum)]
        return answerkey
    }
    
    static func getAnswerHT(myCards: [Int])->String?{
        var (cardNum1, cardNum2, dealerNum) = (myCards[0], myCards[1], myCards[2])
        
        //Get Totals after reassigning values
        if (cardNum1 >= 11 && cardNum1 <= 14){
            if cardNum1 == 14{
                cardNum1 = 11
            }else{
                cardNum1 = 10
            }
        }
        if (cardNum2 >= 11 && cardNum2 <= 14){
            if cardNum2 == 14{
                cardNum2 = 11
            }else{
                cardNum2 = 10
            }
        }
        if (dealerNum >= 11 && dealerNum <= 14){
            if dealerNum == 14{
                dealerNum = 11
            }else{
                dealerNum = 10
            }
        }
        let playerTotal = cardNum1 + cardNum2
        
        //Constants
        if (playerTotal <= 8 || playerTotal >= 17 || playerTotal == 11){
            if (playerTotal <= 8){
                return "Hit"
            }
            else if (playerTotal >= 17){
                return "Stand"
            }else if (playerTotal == 11){
                return "Double"
            }
        }
        
        //Checking with dictionary
        let answerkey = AnswerKey.hardTotals[CardPair(playerTotal: playerTotal, dealerUpCard: dealerNum)]
        return answerkey
    }
}
