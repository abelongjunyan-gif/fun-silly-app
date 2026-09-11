//
//  ContentView.swift
//  fun silly app
//
//  Created by Abel Ong on 11/9/26.
// hello there

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {

            shopView
                .tabItem {
                    Label("Shop", systemImage: "cart")
                }
        }
        .onAppear {
            newMeme()
        }
    }

    var gameView: some View {
        VStack(spacing: 25) {
            Text("Meme Catcher")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Score: \(score)")
                .font(.title2)

            Text("Lives: \(lives)")
                .font(.title2)

            Text("Dodge Coins: \(dodgeCoins)")
                .font(.title3)

            Text(currentMeme)
                .font(.system(size: 100))

            Text(message)
                .font(.headline)
                .multilineTextAlignment(.center)

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

    var shopView: some View {
        VStack(spacing: 25) {
            Text("Meme Shop")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Dodge Coins: \(dodgeCoins)")
            Text("Lives cost \(lifeCost) coins each")
}

#Preview {
    ContentView()
}
