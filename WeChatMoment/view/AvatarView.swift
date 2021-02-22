//
//  Avatar.swift
//  Weibo
//
//  Created by 牟滔 on 2021/2/5.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI

struct AvatarView: View {
    let avatar:String
    var body: some View {
        HStack( spacing: 100){
        loadImage(res: avatar)
            .resizable()
            .scaledToFit()
            .frame(width:50, height: 50)
            .cornerRadius(5)
        }
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(avatar:"6ec3b446jw1e8qgp5bmzyj2050050aa8.jpg")
    }
}
