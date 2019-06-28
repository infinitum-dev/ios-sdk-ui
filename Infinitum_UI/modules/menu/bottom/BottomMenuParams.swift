//
//  BottomMenuParams.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 27/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation

public protocol BottomMenuCallback {
    
    func itemSelected(id: Int)
    
}

public class BottomMenuParams {
    
    var listOptions: [MenuEntity]
    var menuLayout: BottomMenuLayout
    var callback: BottomMenuCallback
    
    /**
        Constructor for Bottom Menu
    **/
    public init(listOptions: [MenuEntity], layout: BottomMenuLayout, callback: BottomMenuCallback) {
        self.listOptions = listOptions
        self.menuLayout = layout
        self.callback = callback
    }
}

public class BottomMenuLayout {
    
    var backgroundColor: UIColor = .darkGray
    var tintColor: UIColor = .white
    
    public init(backgroundColor: UIColor, tintColor: UIColor) {
        self.backgroundColor = backgroundColor
        self.tintColor = tintColor
    }
    
}


