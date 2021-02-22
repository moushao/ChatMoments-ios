//
//  ContentView.swift
//  Weibo
//
//  Created by 牟滔 on 2021/2/4.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI

let width = UIScreen.main.bounds.width - 75

struct MomentView: View {
    let moment: Moment
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack(alignment: .top,spacing: 5){
                HSpacer(width: 10)
                AvatarView(avatar: moment.sender.avatar)
                VStack(alignment: .leading, spacing: 5){
                    Text(moment.sender.nick)
                        .font(Font.system(size:18))
                        .foregroundColor(Color(red: 142/255, green: 199/255, blue: 222/255))
                    
                    Text(moment.content)
                    
                    if !moment.images.isEmpty{
                        GridPhotoView(images: moment.images)
                            .listRowInsets(EdgeInsets())
                    }
                    
                    if !moment.comments.isEmpty{
                        VStack(alignment: .leading, spacing: 5){
                            ForEach(moment.comments,id: \.id){ comment in
                                CommentView(comment: comment)
                            }
                        }
                        .padding(10)
                        .background(Color(red: 239/255, green: 240/255, blue: 242/255))
                        .cornerRadius(5)
                    }
                }
                HSpacer(width: 5)
            }
            .padding(.top,20)
            .padding(.bottom,20)
        }
    }
}

struct MomentView_Previews: PreviewProvider {
    static var previews: some View {
        MomentView(moment: listData[0])
    }
}
