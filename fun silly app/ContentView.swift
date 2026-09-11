//
//  ContentView.swift
//  fun silly app
//
//  Created by Abel Ong on 11/9/26.
// hello there

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
Text("Meme Catcher")
        .font(.largeTitle)
        .fontWeight(.bold)
Text("Score: \(score)")
        .font(.title2)
Text("Lives: \(lives)")
        .font(.title2)
Text(currentMeme)
        .font(.system(size: 100))
Text(message)
        .font(.headline)
        .multilineTextAlignment(.center)
            // overall laayout of the catcher game
            
            
            
            if gameOver {
                Button("Play Again") {
                    restartGame()
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
            } else {
                HStack(spacing: 20) {
                    Button("Catch") {
                        catchMeme()
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    
                    Button("Skip") {
                        skipMeme()
                    }
                    .font(.title2)
                    .buttonStyle(.bordered)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
