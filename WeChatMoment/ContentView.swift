//
//  ContentView.swift
//  WeChatMoment
//
//  Created by 牟滔 on 2021/2/1.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical){
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
                .navigationBarTitle("Back")
        }
    }
}
