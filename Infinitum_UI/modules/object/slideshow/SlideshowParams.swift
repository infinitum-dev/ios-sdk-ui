//
//  SlideshowParams.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 03/07/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation

public protocol SlideshowCallback {
    
    func onClick( object: ObjectEntity)
    
}

public class SlideshowLayout {
    
    var background = UIColor.black
    var headerColor = UIColor.brown
    var titleColor = UIColor.white
    var bodyColor = UIColor.white
    
    /**
     *  Empty constructor for default values
     */
    public init() {
    }
    
    /**
     * Constructor for Simple cell
     */
    public init(background: UIColor, headerColor: UIColor, titleColor: UIColor, bodyColor: UIColor) {
        self.background = background
        self.headerColor = headerColor
        self.titleColor = titleColor
        self.bodyColor = bodyColor
    }
    
}

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
