//
//  SpacerWidget.swift
//  Weibo
//
//  Created by 牟滔 on 2021/2/5.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI

func HSpacer(width:CGFloat) -> Spacer {
    let spacer = Spacer()
    spacer.frame(width: width)
    return spacer}

func VSpacer(height:CGFloat) -> Spacer {
    let spacer = Spacer()
    spacer.frame(height: height)
    return spacer
    
}

func HVSpacer(width:CGFloat?,height:CGFloat?) -> Spacer {
    let spacer = Spacer()
    spacer.frame(width: width,height: height)
    return spacer
}


