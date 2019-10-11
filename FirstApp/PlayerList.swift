//
//  PlayerList.swift
//  FirstApp
//
//  Created by Eduarda Mello on 11/10/19.
//  Copyright © 2019 Eduarda Mello. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView{
            List(players) {
                player in
                NavigationLink(destination: PlayerView(player: player)) {
                    PlayerRow(player: player)
                }
            }.navigationBarTitle(Text("NBA Finals Players"), displayMode: .large)
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
