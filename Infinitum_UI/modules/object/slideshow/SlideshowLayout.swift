//
//  SlideshowLayout.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 11/07/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import UIKit

public class SlideshowLayout {
    
    var background = UIColor.black
    var headerColor = UIColor.brown
    var titleColor = UIColor.white
    var bodyColor = UIColor.white
    
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
