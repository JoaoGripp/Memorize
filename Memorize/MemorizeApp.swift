//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Joao Gripp on 01/08/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
