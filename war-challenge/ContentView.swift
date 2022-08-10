//
//  ContentView.swift
//  war-challenge
//
//  Created by Ajea Smith on 7/28/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuPlayer = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuPlayer)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    // Genrate random number between 2-14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // update cards
                    playerCard = "card\(playerRand)"
                    cpuPlayer = "card\(cpuRand)"
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    }else if (cpuRand > playerRand) {
                        cpuScore += 1
                    }
                   
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").padding(.bottom, 10.0).font(.headline)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").padding(.bottom, 10.0).font(.headline)
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white).font(.largeTitle)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
