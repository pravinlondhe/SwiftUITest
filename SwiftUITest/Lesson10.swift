//
//  Lesson10.swift
//  SwiftUITest
//
//  Created by Pravin Londhe on 08/06/21.
//

import SwiftUI

struct Lesson10Preview : PreviewProvider{
    static var previews: some View{
        Lesson10Challenge()
    }
}


struct Lesson10Challenge: View {
    var body: some View{
        HStack{
            Button("First Button"){
                print("Clicked first button")
            }
            
            Button(action: {
                print("Second Button")
            }, label: {
                HStack{
                    Text("Play")
                    Image(systemName: "play.fill")
                }
            })
        }.padding()
    }
}
