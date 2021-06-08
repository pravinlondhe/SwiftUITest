//
//  Lesson3.swift
//  SwiftUITest
//
//  Created by Pravin Londhe on 08/06/21.
//

import SwiftUI

// Lesson 3 Challenge
struct Lesson3Challenge: View {
    var body: some View{
        Text("Hello, World!").padding()
            .background(Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}

struct Lesson3_Previews : PreviewProvider{
    static var previews: some View{
        Lesson3Challenge()
    }
}
