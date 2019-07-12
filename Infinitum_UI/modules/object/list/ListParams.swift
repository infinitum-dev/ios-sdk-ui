//
//  ListParams.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 21/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import UIKit

public class ListParams {
    
    var layout: ListLayout
    var objectList: [ObjectEntity]
    var callback: ListCallback
    var cell: CellType
    
    public init (layout: ListLayout, objectList: [ObjectEntity], type: CellType, callback: ListCallback) {
        self.objectList = objectList
        self.callback = callback
        self.cell = type
        self.layout = layout
    }
    
}
