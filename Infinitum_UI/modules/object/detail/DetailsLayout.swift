//
//  DetailsLayout.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 11/07/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import UIKit

public class DetailLayout {
    
    var background = UIColor.white;
    var titleColor = UIColor.black;
    var bodyColor = UIColor.black;
    
    /**
     * Simple detail layout constructor
     */
    public init(background: UIColor, titleColor: UIColor, bodyColor: UIColor) {
        self.background = background;
        self.titleColor = titleColor;
        self.bodyColor = bodyColor;
    }
    
}
