//
//  ObjectEntity.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 21/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import UIKit

public class ObjectEntity {
    
    public var id: Int
    public var title: String?
    public var body: String?
    
    public var image: UIImage?
    
    /*
        Initializer for Simple List object
    */
    public init(id: Int, title: String, body: String) {
        self.id = id
        self.title = title
        self.body = body
    }
    
    
    /*
        Initializer for Detail object
    */
    public init(id: Int, title: String, body: String, image: UIImage) {
        self.id = id
        self.title = title
        self.body = body
        self.image = image
    }
    
}
