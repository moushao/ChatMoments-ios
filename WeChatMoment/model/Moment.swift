//
//  Moment.swift
//  Weibo
//
//  Created by 牟滔 on 2021/2/4.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI

struct MomentList: Codable {
    var list : [Moment]
}

struct Moment: Codable,Identifiable {
    var comments: [Comment]
    var content: String
    var images: [Picture]
    var sender: User
    let id = UUID()
}

