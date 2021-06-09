//
//  Lesson5.swift
//  SwiftUITest
//
//  Created by Pravin Londhe on 08/06/21.
//

import SwiftUI

struct Lesson5Preview: PreviewProvider{
    static var previews: some View{
        Lesson5Practise()
    }
}

struct Lesson5Practise:View {
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
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                Button(action: {
                    print("Deal done!!")
                }, label: {
                    Image("dealbutton").padding()
                })
                Spacer()
                
                HStack{
                    Spacer()
                    ScoreCard("Player","0")
                    Spacer()
                    ScoreCard("CPU", "0")
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ScoreCard:View{
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
