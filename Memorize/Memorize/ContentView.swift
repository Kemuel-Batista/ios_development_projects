//
//  ContentView.swift
//  Memorize
//
//  Created by Kemuel Batista on 02/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        .padding()
    }
}

struct CardView : View {
    var isFaceUp: Bool = false
    
    var body: some View {
        if isFaceUp {
            ZStack() {
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }
        } else {
            RoundedRectangle(cornerRadius: 12)
        }
    }
}

#Preview {
    ContentView()
}
