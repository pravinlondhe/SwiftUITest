//
//  Lesson4.swift
//  SwiftUITest
//
//  Created by Pravin Londhe on 08/06/21.
//

import SwiftUI

struct Lesson4Preview : PreviewProvider {
    static var previews: some View{
        Lesson4ChallengeCommonFun()
    }
}

// Lesson 4 Practise
struct Lesson4Practise: View {
    var body: some View{
        VStack{
            Spacer()
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            HStack{
                Spacer()
                Text("Hello")
                Spacer()
                Text("World")
                Spacer()
            }
            Spacer()
        }
    }
}

// Lesson 4 Challenge
struct Lesson4Challenge : View{
    var body: some View{
        VStack{
            ZStack{
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                VStack{
                    Text("CN Tower").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("Toranto")
                }.foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
            }.clipShape(RoundedRectangle(cornerRadius: 10.0))
            
            Spacer()
            ZStack{
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                VStack{
                    Text("Big Ben")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("London")
                }.foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
            }.cornerRadius(10)
        }.padding()
    }
}

// Lesson 4 Challenge with common function

struct Lesson4ChallengeCommonFun : View{
    var body: some View{
        VStack{
            Lesson4CommonFun(assetName: "toronto",
                             iname: "CN Tower",
                             iplace: "Toronto")
            Spacer()
            Lesson4CommonFun(assetName: "london",
                             iname: "Big Ben",
                             iplace: "London")
        }
    }
}

struct Lesson4CommonFun: View {
    var assetName : String
    var imageName : String
    var imagePlace : String
    
    init(assetName name : String ,
         iname imageName : String ,
         iplace imagePlace : String  ) {
        self.assetName = name
        self.imageName = imageName
        self.imagePlace = imagePlace
    }
    var body: some View{
        ZStack{
            Image(assetName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .center) {
                Text(imageName)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                Text(imagePlace)
                    .colorInvert()
            }
            .padding()
            .background(Color.black)
            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            .cornerRadius(10)
        }.cornerRadius(10)
    }
}
