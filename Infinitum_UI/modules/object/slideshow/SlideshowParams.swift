//
//  SlideshowParams.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 03/07/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation

public class SlideshowParams {
    
    var layout: SlideshowLayout
    var objectList: [ObjectEntity]
    var callback: SlideshowCallback
    var type: PageType
    
    public init (layout: SlideshowLayout, objectList: [ObjectEntity], type: PageType, callback: SlideshowCallback) {
        self.objectList = objectList
        self.callback = callback
        self.type = type
        self.layout = layout
    }
    
}
