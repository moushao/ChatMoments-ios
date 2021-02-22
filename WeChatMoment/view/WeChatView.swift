//
//  WeChatView.swift
//  Weibo
//
//  Created by 牟滔 on 2021/2/5.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI

struct WeChatView: View {
    var body: some View {
        ScrollView(.horizontal){
            VStack(alignment: .leading, spacing: 30){
                ProfileView(user: userData)
                HStack{
                    VStack{
                        ForEach(listData,id: \.id){ moment in
                            MomentView(moment:moment)
                        }
                    }
                }
            }
        }
    }
}

struct WeChatView_Previews: PreviewProvider {
    static var previews: some View {
        WeChatView()
    }
}
