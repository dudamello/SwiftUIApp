//
//  StartText.swift
//  FirstApp
//
//  Created by Eduarda Mello on 11/10/19.
//  Copyright © 2019 Eduarda Mello. All rights reserved.
//

import SwiftUI

struct StartText: View {
    
    var statName: String
    var statValue: String
    
    var body: some View {
        HStack(alignment: .bottom) {
            Text(statName).font(.system(size: 40)).fontWeight(.bold).padding(.leading)
            Text(statValue).font(.system(size: 38)).fontWeight(.light).padding(.trailing, 30)
            Spacer()
        }
    }
}

struct StartText_Previews: PreviewProvider {
    static var previews: some View {
        StartText(statName: "Age: ", statValue: "31")
    }
}
