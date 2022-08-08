//
//  ContentView.swift
//  Memorize
//
//  Created by Joao Gripp on 01/08/22.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
    
    let emojisVehicles = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
    
    let emojisAnimals = ["🐮", "🐶", "🐱", "🐷", "🐸", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐻‍❄️", "🐯", "🐨", "🦁"]
    
    let emojisActivities = ["⚽️", "🏀", "⚾️", "🥎", "🏐", "🏉", "🪀", "🏓", "🥏", "🎱"]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                        ForEach(emojis, id: \.self) { emoji in
                            CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                        }
                    }
                }
                .foregroundColor(.red)
                Spacer()
//                HStack(spacing: 30) {
//                    emojiVehiclesButton
//                    emojiAnimalesButton
//                    emojiActivitiesButton
//                }
//                .font(.largeTitle)
//                .padding(10)
                
            }
            .padding(.horizontal)
            .navigationTitle("Memorize")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
//    var emojiVehiclesButton: some View {
//        Button {
//            emojis = emojisVehicles.shuffled()
//        } label: {
//            VStack{
//                Image(systemName: "car")
//                Text("Animals")
//                    .font(.callout)
//            }
//        }
//    }
//    
//    var emojiAnimalesButton: some View {
//        Button {
//            emojis = emojisAnimals.shuffled()
//        } label: {
//            VStack{
//                Image(systemName: "pawprint.circle")
//                Text("Animals")
//                    .font(.callout)
//            }
//        }
//    }
//    
//    var emojiActivitiesButton: some View {
//        Button {
//            emojis = emojisActivities.shuffled()
//        } label: {
//            VStack{
//                Image(systemName: "figure.walk")
//                Text("Activities")
//                    .font(.callout)
//            }
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
//            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}
