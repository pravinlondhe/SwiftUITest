//
//  Lesson13.swift
//  SwiftUITest
//
//  Created by Pravin Londhe on 09/06/21.
//

import SwiftUI

struct Lesson13: View {
    @State private var firstImage = 1
    @State private var secondImage = 1
    @State private var thirdImage = 1
    @State private var credits = 1000
    var body: some View {
        VStack{
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .padding()
            Spacer()
            Text("Credits: \(credits)")
                .font(.title2)
            Spacer()
            HStack {
                
                Image(getImage(firstImage))
                    .resizable()
                Image(getImage(secondImage))
                    .resizable()
                Image(getImage(thirdImage))
                    .resizable()
            }.padding(.horizontal).aspectRatio(contentMode: .fit)
            Spacer()
            Button("Spin"){
                firstImage = Int.random(in: 1...3)
                secondImage = Int.random(in: 1...3)
                thirdImage = Int.random(in: 1...3)
                
                if(firstImage == secondImage && secondImage == thirdImage){
                    credits += 50
                }
                else {
                    credits -= 10
                }
            }
            .font(.headline)
            .padding(.horizontal, 40.0)
            .padding(.vertical, 10.0)
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(25)
            Spacer()
            
        }
    }
}

func getImage(_ randomNo:Int) -> String {
    var returnValue = ""
    switch randomNo {
    case 1:
        returnValue = "apple"
    case 2:
        returnValue = "star"
    case 3:
        returnValue = "cherry"
    default:
        returnValue = ""
    }
    return returnValue
}

struct Lesson13_Previews: PreviewProvider {
    static var previews: some View {
        Lesson13()
    }
}
