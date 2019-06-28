//
//  DetailParams.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 21/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation

public class DetailParams {
    
    var layout: DetailLayout
    var object: ObjectEntity
    
    public init (layout: DetailLayout, object: ObjectEntity) {
        self.object = object
        self.layout = layout
    }
    
}

public class DetailLayout {
    
    var background = UIColor.white;
    var titleColor = UIColor.black;
    var bodyColor = UIColor.black;
    
    /**
     * Empty constructor for default options
     */
    public init() {}
    
    
    /**
     * Simple detail layout constructor
     */
    public init(background: UIColor, titleColor: UIColor, bodyColor: UIColor) {
        self.background = background;
        self.titleColor = titleColor;
        self.bodyColor = bodyColor;
    }
    
}
