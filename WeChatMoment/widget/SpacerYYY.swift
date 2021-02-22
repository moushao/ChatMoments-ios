//
//  SpacerYYY.swift
//  WeChatMoment
//
//  Created by 牟滔 on 2021/2/18.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI

struct SpacerYYY: View {
    var body: some View {
        HStack(alignment: .top){
            Text("Hello Spacer")
            Spacer()
        }
        .foregroundColor(Color.red)
        .frame(height:50)
    }
}

struct SpacerYYY_Previews: PreviewProvider {
    static var previews: some View {
        SpacerYYY()
    }
}
