//
//  ListParams.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 21/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation

public enum ListType : Int {
    case Simple = 1
}

public protocol ListCallback {
    
    func onClick( object: ObjectEntity)
    
}

public class ListLayout {
    
    var background = UIColor.white;
    var cellBackground = UIColor.white;
    var titleColor = UIColor.black;
    var bodyColor = UIColor.black;
    
    /**
     *  Empty constructor for default values
     */
    public init() {}
    
    /**
     * Constructor for Simple cell
     */
    public init(background: UIColor, cellBackground: UIColor, titleColor: UIColor, bodyColor: UIColor) {
        self.background = background;
        self.cellBackground = cellBackground;
        self.titleColor = titleColor;
        self.bodyColor = bodyColor;
    }
}

public class ListParams {
    
    var layout: ListLayout
    var objectList: [ObjectEntity]
    var callback: ListCallback
    var cell: UITableViewCell.Type
    
    public init (layout: ListLayout, objectList: [ObjectEntity], type: ListType, callback: ListCallback) {
        self.objectList = objectList
        self.callback = callback
        self.cell = Utils.getCellForType(type: type)
        self.layout = layout
    }
    
}
