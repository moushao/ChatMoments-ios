//
//  Moment.swift
//  Weibo
//
//  Created by 牟滔 on 2021/2/4.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI

struct Comment : Codable,Identifiable{
    let id = UUID()
    let content: String
    let sender: User
}
