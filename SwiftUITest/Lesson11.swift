//
//  Lesson11.swift
//  SwiftUITest
//
//  Created by Pravin Londhe on 09/06/21.
//

import SwiftUI

struct Lesson11Preview: PreviewProvider{
    static var previews: some View{
        Lesson11Practise()
    }
}

struct Lesson11Practise:View {
    
    @State private var cpuCard = "card2"
    @State private var playerCard = "card3"
    @State private var cpuScore = 0
    @State private var playerScore = 0
    @State private var cpuRandom = 2
    @State private var playerRandom = 3
    
    var body: some View{
        ZStack{
            Image("background")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo-1")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    if cpuRandom > playerRandom {
                        cpuScore += 1
                    }
                    else if cpuRandom < playerRandom {
                        playerScore += 1
                    }
                    
                    cpuRandom = Int.random(in: 2...14)
                    playerRandom = Int.random(in: 2...14)
                    
                    cpuCard = "card\(cpuRandom)"
                    playerCard = "card\(playerRandom)"
                    
                    
                }, label: {
                    Image("dealbutton").padding()
                })
                Spacer()
                
                HStack{
                    Spacer()
                    ScoreCard11("Player",String(playerScore))
                    Spacer()
                    ScoreCard11("CPU", String(cpuScore))
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ScoreCard11:View{
    var name:String
    var score: String
    init(_ player:String , _ score:String ){
        self.name = player
        self.score = score
    }
    var body: some View{
        VStack{
            Text(name)
            Text(score)
                .padding()
        }
        .foregroundColor(.white)
        .font(.largeTitle)
    }
}

