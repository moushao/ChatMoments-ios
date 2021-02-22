//
//  CommentView.swift
//  Weibo
//
//  Created by 牟滔 on 2021/2/5.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI

struct CommentView: View {
    let comment:Comment
    var body: some View {
        HStack(alignment: .top, spacing: 5){
            Text(comment.sender.nick)
            .foregroundColor(Color(red: 72/255, green: 61/255, blue: 139/255))
                .font(Font.body.bold())
            Text(": ").offset(x:-5,y: 0)
            Text(comment.content)
            HSpacer(width: 10)
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(comment: listData[0].comments[0])
    }
}
