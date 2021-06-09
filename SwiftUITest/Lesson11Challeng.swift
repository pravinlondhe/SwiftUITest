//
//  Lesson11Challeng.swift
//  SwiftUITest
//
//  Created by Pravin Londhe on 09/06/21.
//

import SwiftUI

struct Lesson11ChallengePreview : PreviewProvider{
    static var previews: some View{
        Lesson11Challenge()
    }
}


struct Lesson11Challenge : View {
    @State private var number = 0
    var body: some View{
        VStack{
            Text(String(number))
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            Button("Click to add 2"){
                number += 2
            }
            .padding()
            
            Button("Click to double"){
                number *= 2
            }
            .padding()
        }
    }
}
