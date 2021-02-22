//
//  DataUtils.swift
//  Weibo
//
//  Created by 牟滔 on 2021/2/5.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI

let userData = loadUserData("UserProfile.json")

func loadUserData(_ fileName:String) -> User {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("cannot find \(fileName) in main bundle")
    }
    guard let data = try? Data(contentsOf: url) else{
        fatalError("cannot load data\(url)")
    }
    guard let user = try? JSONDecoder().decode(User.self,from: data) else {
        fatalError("Cannot decode monent list")
    }

    return user
}


let listData = loadMomentsData("UserMomentList.json")

func loadMomentsData(_ fileName:String) -> [Moment] {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("cannot find \(fileName) in main bundle")
    }
    guard let data = try? Data(contentsOf: url) else{
        fatalError("cannot load data\(url)")
    }
    guard let list = try? JSONDecoder().decode([Moment].self,from: data) else {
        fatalError("Cannot decode monent list")
    }

    return list
}
