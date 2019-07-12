//
//  ListLayout.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 11/07/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation
import UIKit

public class ListLayout {
    
    var background = UIColor.white
    var cellBackground = UIColor.white
    var titleColor = UIColor.black
    var bodyColor = UIColor.black
    
    /**
     * Constructor for Simple cell
     */
    public init(background: UIColor, cellBackground: UIColor, titleColor: UIColor, bodyColor: UIColor) {
        self.background = background
        self.cellBackground = cellBackground
        self.titleColor = titleColor
        self.bodyColor = bodyColor
    }
}
