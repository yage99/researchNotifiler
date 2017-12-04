//
//  GlobalData.swift
//  ResearchNotifier
//
//  Created by zhangya on 12/5/17.
//  Copyright © 2017 yage. All rights reserved.
//

import Foundation

class GlobalData {
    var deviceToken: Data?
    
    static var instance: GlobalData?
    
    static func getInstance() -> GlobalData {
        if instance == nil {
            instance = GlobalData()
        }
        return instance!
    }
}
