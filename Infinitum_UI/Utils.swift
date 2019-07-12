//
//  Utils.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 21/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import UIKit

class Utils {
    
    static func getCellForType(type : CellType) -> UITableViewCell.Type {
        switch type {
        case .Simple:
            return SimpleCell.self
        }
    }
    
    static func getUICellForType(type: CellType) -> UITableViewCell {
        switch type {
        case .Simple:
            return SimpleCell()
        }
    }
    
    static func getPageFromType(type: PageType, object: ObjectEntity, layout: SlideshowLayout) -> SlideshowPageController {
        switch type {
        case .Simple:
            let controller = SimpleContentViewController()
            controller.object = object
            controller.layout = layout
            return controller
        }
    }
    
}
