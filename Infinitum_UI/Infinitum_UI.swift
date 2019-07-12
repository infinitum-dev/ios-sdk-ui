//
//  Infinitum_UI.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 18/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import UIKit

public class InfinitumUI {
    
    public class Object {
        
        public static func list(params: ListParams) -> UIViewController {
            let controller = ListViewController()
            controller.params = params
            return controller
        }
        
        public static func detail(params: DetailParams) -> UIViewController {
            let controller = DetailViewController()
            controller.params = params
            return controller
        }
        
        public static func slideshow(params: SlideshowParams) -> UIViewController {
            let controller = SlideshowViewController()
            controller.params = params
            return controller
        }
        
    }
    
    public class Menu {
        
        public static func bottom(params: BottomMenuParams) -> UIView {
            let view = BottomMenuView()
            view.params = params
            return view
        }
        
    }
    
}
