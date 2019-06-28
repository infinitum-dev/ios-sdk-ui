//
//  MenuEntity.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 27/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation

public class MenuEntity {
    
    public var id: Int
    public var title: String?
    public var image: UIImage?
    public var selectedImage: UIImage?
    
    /*
     Initializer for Bottom Menu object
     */
    public init(id: Int, title: String, image: UIImage, selectedImage: UIImage) {
        self.id = id
        self.title = title
        self.image = image
        self.selectedImage = selectedImage
    }
    
}
