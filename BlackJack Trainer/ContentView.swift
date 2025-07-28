//
//  ContentView.swift
//  BlackJack Trainer
//
//  Created by Ryan Park on 7/24/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var inPlay = false
    @State var correctAnswer: String? = ""
    @State var myCards : [Int] = []
    @State var answer = ""
    @State var playerCard1 = "back"
    @State var playerCard2 = "back"
    @State var dealerCard = "back"
    @State var correctHands = 0
    
    
    var body: some View {
        ZStack {
            Image("background-plain")//Greenclothe background
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                
                ZStack{
                    Spacer()
                    Image(dealerCard)
                        .offset(x:-25)
                    Image("back")
                        .offset(x:25)
                    Spacer()
                } //Dealer's cards
                
                Spacer()
                
                ZStack{
                    Spacer()
                    Image(playerCard1)
                        .offset(x:-25)
                    Image(playerCard2)
                        .offset(x:25)
                }//Player's cards
                
                Spacer()
                
                if inPlay{
                    HStack{
                        Spacer()
                        Button {
                            answer = "Hit"
                            correctAnswer = gameLogic.SolveHand(myCards: myCards, inPlay: &inPlay)
                        } label: {
                            Text("Hit")
                                .font(.title)
                                .foregroundColor(.green)
                                .padding()
                                .background(Capsule().fill(Color.black).frame(width: 100, height: 100))
                                .shadow(color: Color.green.opacity(0.8), radius: 10, x: 0, y: 0)
                                .shadow(color: Color.green.opacity(0.6), radius: 20, x: 0, y: 0)
                                .shadow(color: Color.green.opacity(0.4), radius: 30, x: 0, y: 0)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .offset(x:25)
                        Spacer()
                        Button {
                            answer = "Stand"
                            correctAnswer = gameLogic.SolveHand(myCards: myCards, inPlay: &inPlay)
                        } label: {
                            Text("Stand")
                                .font(.title)
                                .foregroundColor(.red)
                                .padding()
                                .background(Capsule().fill(Color.black).frame(width: 100, height: 100))
                                .shadow(color: Color.red.opacity(0.8), radius: 10, x: 0, y: 0)
                                .shadow(color: Color.red.opacity(0.6), radius: 20, x: 0, y: 0)
                                .shadow(color: Color.red.opacity(0.4), radius: 30, x: 0, y: 0)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .offset(x:-25)
                        Spacer()
                    } //Hit and Stand Buttons
                    
                    Spacer()
                    
                    HStack{
                        Spacer()
                        Button {
                            answer = "Split"
                            correctAnswer = gameLogic.SolveHand(myCards: myCards, inPlay: &inPlay)
                        } label: {
                            Text("Split")
                                .font(.title)
                                .foregroundColor(.yellow)
                                .padding()
                                .background(Capsule().fill(Color.black).frame(width: 100, height: 100))
                                .shadow(color: Color.yellow.opacity(0.8), radius: 10, x: 0, y: 0)
                                .shadow(color: Color.yellow.opacity(0.6), radius: 20, x: 0, y: 0)
                                .shadow(color: Color.yellow.opacity(0.4), radius: 30, x: 0, y: 0)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .offset(x:25)
                        Spacer()
                        Button {
                            answer = "Double"
                            correctAnswer = gameLogic.SolveHand(myCards: myCards, inPlay: &inPlay)
                        } label: {
                            Text("Double")
                                .font(.title)
                                .foregroundColor(.orange)
                                .padding()
                            
                                .background(Capsule().fill(Color.black).frame(width: 100, height: 100))
                                .shadow(color: Color.orange.opacity(0.8), radius: 10, x: 0, y: 0)
                                .shadow(color: Color.orange.opacity(0.6), radius: 20, x: 0, y: 0)
                                .shadow(color: Color.orange.opacity(0.4), radius: 30, x: 0, y: 0)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .offset(x:-25)
                        Spacer()
                    } //Split and Double Buttons
                }//Button sets
                else{
                    VStack{
                        Spacer()
                        if !answer.isEmpty{
                            Text(answer)
                                .font(.title)
                                .foregroundColor(correctAnswer == answer ? .green:.red)
                                .padding()
                                .background(.black)
                                .frame(width: 150,height: 80)
                            if correctAnswer != answer{
                                Text(correctAnswer ?? "")
                                    .font(.title)
                                    .foregroundColor(.green)
                                    .padding()
                                    .background(.black)
                                    .frame(width: 150,height: 80)
                            }
                        } //Answer
                        
                        Spacer()
                        Button {
                            myCards = gameLogic.deal()
                            playerCard1 = "card" + String(myCards[0])
                            playerCard2 = "card" + String(myCards[1])
                            dealerCard = "card" + String(myCards[2])
                            inPlay.toggle()
                        } label: {
                            Text("Deal")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .background(Capsule().fill(Color.black).frame(width: 100, height: 100))
                                .shadow(color: Color.white.opacity(0.8), radius: 10, x: 0, y: 0)
                                .shadow(color: Color.white.opacity(0.6), radius: 20, x: 0, y: 0)
                                .shadow(color: Color.white.opacity(0.4), radius: 30, x: 0, y: 0)
                        } //Deal Button
                        .buttonStyle(PlainButtonStyle())
                        Spacer()
                        
                    } //Deal and Answer
                } //Deal and Answer
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
