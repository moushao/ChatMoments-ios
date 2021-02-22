//
//  ProfileView.swift
//  Weibo
//
//  Created by 牟滔 on 2021/2/5.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI



struct ProfileView: View {
    let user:User
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            
            loadImage(res: "630584a6gy1gau54zm4dtj20m80dftbv.jpg")
                .resizable()
                .scaledToFill()
                .frame(width:SWidth,height:SWidth*0.75)
            AvatarView(avatar: user.avatar)
                .frame(width:50, height: 50)
                .offset(x:-30,y: 13)
                
            Text(user.username)
                .offset(x:-90,y: -4)
                .foregroundColor(.white)
                .font(Font.title.weight(.medium))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: userData)
    }
}
