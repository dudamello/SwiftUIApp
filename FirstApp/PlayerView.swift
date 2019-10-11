//
//  PlayerView.swift
//  FirstApp
//
//  Created by Eduarda Mello on 11/10/19.
//  Copyright © 2019 Eduarda Mello. All rights reserved.
//

import SwiftUI

struct PlayerView: View {
    
    var player: Player
    
    var body: some View {
        VStack {
            Image(player.team.imageName).resizable().frame(height: 250)
            Image(player.imageName).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(radius: 5).offset(x: 0, y: -80).padding(.bottom, -90)
            Text(player.name).font(.system(size: 45)).fontWeight(.bold)
            
            StartText(statName: "Age: ", statValue: String(player.age))
            StartText(statName: "Height: ", statValue: player.height)
            StartText(statName: "Weight: ", statValue: String(player.weight) + " lbs")
            
            Spacer()
            
            
            
        }.edgesIgnoringSafeArea(.top) //pra deixar certo la em cima
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(player: players[0])
    }
}
