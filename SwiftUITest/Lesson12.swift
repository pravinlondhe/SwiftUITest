//
//  Lesson12.swift
//  SwiftUITest
//
//  Created by Pravin Londhe on 09/06/21.
//

import SwiftUI

struct Lesson12ChallengePreview : PreviewProvider{
    static var previews: some View{
        Lesson12Challenge()
    }
}


struct Lesson12Challenge: View{
    @State private var displayNo = 0
    @State private var isDecrement = false
    var body: some View{
        VStack{
            Text(String(displayNo))
                .padding()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Button("Click Me!!"){
                if !isDecrement && (0 > displayNo || displayNo < 50 ){
                    displayNo = increase(displayNo)
                }
                else {
                    isDecrement = true
                    displayNo = decrease(displayNo)
                    if(displayNo <= 0) {
                        isDecrement = false
                    }
                }
            }
            .padding()
            .background(Color.gray)
            .foregroundColor(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }.padding()
        
        
    }
}


func increase(_ no:Int) -> Int{
    let random = Int.random(in: 1...10)
    return no + random
}

func decrease(_ no:Int) -> Int{
    let random = Int.random(in: 1...10)
    return no - random
}
