//
//  PlayerRow.swift
//  FirstApp
//
//  Created by Eduarda Mello on 11/10/19.
//  Copyright © 2019 Eduarda Mello. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player
    
    var body: some View {
        HStack {
            Image(player.imageName).resizable().scaledToFit().clipShape(Circle()).background(Circle().foregroundColor(player.team.color))
            Text(player.name).font(.largeTitle).lineLimit(1)
            Spacer()
            
        }
    }
}
#if DEBUG
struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[1]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[2]).previewLayout(.fixed(width: 500, height: 100))
            
        }
    }
}
#endif
