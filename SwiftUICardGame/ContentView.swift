//
//  ContentView.swift
//  SwiftUICardGame
//
//  Created by Firat Tamur on 11/19/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard : String = "card2"
    @State var botCard    : String = "card3"
    
    @State var playerScore : Int = 0
    @State var botScore    : Int = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background")
            
            VStack {
                
                Spacer()
                
                Image("logo")
                    .ignoresSafeArea()
                  
                Spacer()
                
                HStack {
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(botCard)
                    Spacer()
                    
                }
                
                Spacer()
                                
                Button(action: {
                    
                    // generate random numbers for game
                    let playerRand = Int.random(in: 2...14)
                    let botRand    = Int.random(in: 2...14)
                    
                    // update cards
                    playerCard = "card\(playerRand)"
                    botCard    = "card\(botRand)"
                
                    // update scores
                    if playerRand > botRand {
                        playerScore += 1
                    }else {
                        botScore    += 1
                    }
                    
                    
                }) {
                    Image("dealbutton")
                }
                
                Spacer()
                                
                HStack {
                    
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(playerScore))
                            .font(.headline)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("Bot")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(botScore))
                            .font(.headline)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    
                }
                
                Spacer()
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
