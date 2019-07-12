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
