//
//  Utils.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 21/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation

class Utils {
    
    static func getCellForType(type : ListType) -> UITableViewCell.Type {
        switch type {
        case .Simple:
            return SimpleCell.self
        }
    }
    
}
